#!/usr/bin/env bash

test -f "./script/${1}" || return 1

script_server() {
  run script/server
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_bootstrap(){
  run script/bootstrap
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_test() {
  run script/test
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_console() {
  run script/console
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_setup() {
  run script/setup
  exit $? # Don't attempt to run any other plugins if this is defined
}
