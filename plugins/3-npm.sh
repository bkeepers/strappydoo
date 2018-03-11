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
  test -n "$(grep "\"test\":" package.json)" && run npm test
}

npm_server() {
  test -n "$(grep "\"start\":" package.json)" && run npm start
}
