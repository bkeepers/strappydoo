#!/usr/bin/env bash

test -f requirements.txt || return 1

pip_bootstrap(){
  run pip install -r requirements.txt
}
