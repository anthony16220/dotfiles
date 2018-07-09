.PHONY: help git-config
.DEFAULT_GOAL := help

all: git-config sublime-text-3 ## Install all packages

git-config: ## Install config files for Git
	assets/git-config.sh

sublime-text-3: ## Install config files for Sublime Text 3
	assets/sublime-text-3.sh

help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
