#!/usr/bin/env bash

test -f Gemfile || return 1

bundler_bootstrap(){
  bundle check > /dev/null 2>&1 || bundle install
}
