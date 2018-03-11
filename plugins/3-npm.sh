#!/usr/bin/env bash

test -f package.json || return 1

npm_server() {
  run npm start
}

npm_bootstrap(){
  run npm install
}

npm_test() {
  run npm test
}
