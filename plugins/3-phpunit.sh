#!/usr/bin/env bash

test -f phpunit.xml || test -f vendor/bin/phpunit || return 1

phpunit_test() {
  run vendor/bin/phpunit
}