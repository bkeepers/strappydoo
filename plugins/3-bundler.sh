#!/usr/bin/env bash

test -f Gemfile || return 1

bundler_bootstrap(){
  run bundle check > /dev/null 2>&1 || run bundle install
}
