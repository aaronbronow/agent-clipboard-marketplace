.PHONY: release clean

release:
	@if [ -z "$(VERSION)" ]; then \
		echo "Error: VERSION is required. Usage: make release VERSION=1.0.0"; \
		exit 1; \
	fi
	@echo "Bumping version to $(VERSION) in .claude-plugin/marketplace.json..." \
	&& sed -i 's/"version": "[^"]*"/"version": "$(VERSION)"/' .claude-plugin/marketplace.json
	@echo "Committing version bump..." \
	&& git add .claude-plugin/marketplace.json \
	&& (git diff-index --quiet HEAD .claude-plugin/marketplace.json || git commit -m "bump: version $(VERSION)")
	@echo "Pushing changes to remote..." \
	&& git push origin main
	@echo "Tagging release v$(VERSION)..." \
	&& git tag -a v$(VERSION) -m "Release v$(VERSION)" \
	&& git push origin v$(VERSION)
	@echo "Creating GitHub release v$(VERSION)..." \
	&& printf "Agent Clipboard Marketplace v$(VERSION)\n" > .release-notes.tmp \
	&& gh release create v$(VERSION) -F .release-notes.tmp -t "v$(VERSION)" \
	&& rm -f .release-notes.tmp
	@echo "Release v$(VERSION) successfully created!"

clean:
	rm -f .release-notes.tmp
