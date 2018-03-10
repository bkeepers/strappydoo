#!/bin/sh

test -f bin/rails || return 1

rails_server() {
  bin/rails server
}

rails_console() {
  bin/rails console
}

rails_test() {
  bin/rails test
}

rails_test() {
  bin/rails console
}
