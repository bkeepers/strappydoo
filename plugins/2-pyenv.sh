#!/usr/bin/env bash

( test -f ".python-version" && test -z "$(pyenv version-name 2>/dev/null)" ) || return 1

pyenv_bootstrap() {
  run pyenv install --skip-existing
  which pipenv >/dev/null 2>&1  || {
    # TODO: Install with Homebrew on macOS, which should be more reliable
    run pip install pipenv
    run pyenv rehash
  }
}
