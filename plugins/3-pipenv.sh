#!/usr/bin/env bash

test -f Pipfile || return 1

pipenv_bootstrap(){
  run mkdir -p .venv && pipenv install --dev
}
