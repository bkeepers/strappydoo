#!/usr/bin/env bash

(
  test -f package.json &&
  test ! -f yarn.lock &&
  test ! -f .yarnrc
) || return 1

npm_bootstrap(){
  run npm install
}

npm_test() {
  run npm test
}

NPM_START_SCRIPT=$(grep "\"start\":" package.json)
test -n "$NPM_START_SCRIPT" || return 1

npm_server() {
  npm start
}
