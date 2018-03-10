#!/bin/sh

test -f Gemfile || return 1

bundler_bootstrap(){
  bundle install
}
