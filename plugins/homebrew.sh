#!/bin/sh

# Find Brewfile or brewfile case insensitive
BREWFILE=$(find . -iname "Brewfile" | head -n 1)
test -n "$BREWFILE" || return 1

homebrew_bootstrap(){
  brew bundle
}
