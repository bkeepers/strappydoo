#!/usr/bin/env bash

test -f poetry.lock || return 1

poetry_bootstrap(){
  run poetry config settings.virtualenvs.in-project true
  run poetry install
}
