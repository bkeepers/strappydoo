#!/usr/bin/env bash

test -f requirements.txt || return 1

pip_bootstrap(){
  run python -m venv .venv && .venv/bin/pip install -r requirements.txt
}
