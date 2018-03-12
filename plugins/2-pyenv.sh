#!/usr/bin/env bash

test -f ".python-version" || return 1

pyenv_bootstrap() {
  run pyenv install --skip-existing
}
