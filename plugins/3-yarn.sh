#!/usr/bin/env bash

test -f yarn.lock || test -f .yarnrc || return 1

yarn_server() {
  run yarn run start
}

yarn_bootstrap(){
  run yarn install
}

yarn_test() {
  run yarn run test
}
