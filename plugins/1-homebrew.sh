#!/usr/bin/env bash

# Find Brewfile or brewfile case insensitive
BREWFILE=$(find . -iname "Brewfile" | head -n 1)
(test -n "$BREWFILE" && test "$(uname -s)" = "Darwin") || return 1

homebrew_bootstrap() {
  run brew bundle check > /dev/null 2>&1 || run brew bundle
}
