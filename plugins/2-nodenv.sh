#!/usr/bin/env bash

( test -f ".node-version" && test -z "$(nodenv version-name 2>/dev/null)" ) || return 1

nodenv_bootstrap() {
  run nodenv install --skip-existing
}
