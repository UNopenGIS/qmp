# QMP Project Makefile
.PHONY: help areas-check areas-update areas-add areas-quality clean stats

help:
	@echo "🗺️  QMP Project Management Tasks"
	@echo "================================="
	@echo "Areas Management:"
	@echo "  areas-check     - Run quality check on areas/*.md files"
	@echo "  areas-update    - Update areas/index.md"
	@echo "  areas-add       - Add new country (requires COUNTRY=xx NAME='Name')"
	@echo "  areas-quality   - Run comprehensive quality assessment"
	@echo "Maintenance:"
	@echo "  clean          - Clean temporary files"
	@echo "  stats          - Show project statistics"

areas-check:
	@echo "🔍 Running areas quality check..."
	@cd docs/ja/notes/areas && bash quality-check.sh

areas-update:
	@echo "🔄 Updating areas/index.md..."
	@cd docs/ja/notes/areas && bash update-index.sh

areas-add:
	@if [ -z "$(COUNTRY)" ] || [ -z "$(NAME)" ]; then \
		echo "❌ Error: COUNTRY and NAME parameters required"; \
		echo "   Usage: make areas-add COUNTRY=xx NAME='Country Name'"; \
		exit 1; \
	fi
	@echo "➕ Adding new country: $(NAME) ($(COUNTRY))"
	@cd docs/ja/notes/areas && \
		cp _template.md $(COUNTRY).md && \
		sed -i '' 's/\[国コード\]/$(COUNTRY)/g' $(COUNTRY).md && \
		sed -i '' 's/\[国名\]/$(NAME)/g' $(COUNTRY).md && \
		echo "✅ Created $(COUNTRY).md for $(NAME)"

areas-quality:
	@echo "📊 Comprehensive areas quality assessment..."
	@cd docs/ja/notes/areas && \
		echo "=== File Statistics ===" && \
		for file in *.md; do \
			if [[ "$$file" != "_"* && "$$file" != "index.md" ]]; then \
				echo "📁 $$file: $$(wc -l < $$file) lines"; \
			fi; \
		done && \
		bash quality-check.sh

clean:
	@echo "🧹 Cleaning temporary files..."
	@find . -name ".DS_Store" -delete 2>/dev/null || true
	@find . -name "*.tmp" -delete 2>/dev/null || true
	@echo "✅ Cleanup completed"

stats:
	@echo "📈 Project Statistics"
	@echo "===================="
	@echo "Areas files: $$(find docs/ja/notes/areas -name "*.md" ! -name "_*" ! -name "index.md" | wc -l | tr -d ' ')"
	@echo "Total markdown files: $$(find docs -name "*.md" | wc -l | tr -d ' ')"

courage:
	@echo "🗺️  Courage to Map!"
	@echo "=================="
	@echo "私たちは生成AIと共創し、"
	@echo "世界中のマッピングコミュニティに"
	@echo "勇気を与える地図を作ります 🌍"
