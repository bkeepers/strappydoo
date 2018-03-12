#!/usr/bin/env bash

test -f "composer.json" || return 1

composer_bootstrap() {
  run composer install
}
