#!/bin/sh

test -f "./script/${1}" || return 1

_script_server() {
  script/server
  exit $? # Don't attempt to run any other plugins if this is defined
}

_script_bootstrap(){
  script/bootstrap
  exit $? # Don't attempt to run any other plugins if this is defined
}

_script_test() {
  script/test
  exit $? # Don't attempt to run any other plugins if this is defined
}

_script_console() {
  script/console
  exit $? # Don't attempt to run any other plugins if this is defined
}
