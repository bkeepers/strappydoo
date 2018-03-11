#!/usr/bin/env bash

test -f "./script/${1}" || return 1

script_server() {
  script/server
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_bootstrap(){
  script/bootstrap
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_test() {
  script/test
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_console() {
  script/console
  exit $? # Don't attempt to run any other plugins if this is defined
}

script_setup() {
  script/setup
  exit $? # Don't attempt to run any other plugins if this is defined
}
