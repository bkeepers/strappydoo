#!/usr/bin/env bash

test -f bin/rails || return 1

rails_server() {
  run bin/rails server
}

rails_console() {
  run bin/rails console
}

rails_test() {
  run bin/rails test
}
