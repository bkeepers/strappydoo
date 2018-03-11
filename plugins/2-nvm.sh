#!/usr/bin/env bash

test -f ".nvmrc" || return 1

nvm_bootstrap() {
  run nvm install && nvm use
}
