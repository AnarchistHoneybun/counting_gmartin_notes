# Variables
MAIN_FILE = main.typ
OUTPUT_DIR = output
OUTPUT_FILE = $(OUTPUT_DIR)/CTAEC_Notes.pdf

# Default target
all: $(OUTPUT_FILE)

# Compile the main document
$(OUTPUT_FILE): $(MAIN_FILE) chapters/*.typ
	@echo "Compiling combinatorics notes..."
	@mkdir -p $(OUTPUT_DIR)
	typst compile $(MAIN_FILE) $(OUTPUT_FILE)
	@echo "✓ Compilation successful! PDF saved to $(OUTPUT_FILE)"

# Watch for changes and recompile automatically  
watch:
	@echo "Watching for changes... (Press Ctrl+C to stop)"
	typst watch $(MAIN_FILE) $(OUTPUT_FILE)

# Clean output files
clean:
	rm -rf $(OUTPUT_DIR)
	@echo "✓ Cleaned output directory"

# Create a new chapter template
new-chapter:
	@read -p "Enter chapter number: " num; \
	read -p "Enter chapter name: " name; \
	chapter_file="chapters/$$num-$$name.typ"; \
	echo "= $$name" > "$$chapter_file"; \
	echo "" >> "$$chapter_file"; \
	echo "// Add your content here" >> "$$chapter_file"; \
	echo "✓ Created $$chapter_file"; \
	echo "Add #include \"$$chapter_file\" to main.typ"

# Help target
help:
	@echo "Available targets:"
	@echo "  all         - Compile the document (default)"
	@echo "  watch       - Watch for changes and auto-recompile"
	@echo "  clean       - Remove output files"
	@echo "  new-chapter - Create a new chapter template"
	@echo "  help        - Show this help message"

.PHONY: all watch clean new-chapter help