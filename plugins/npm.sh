#!/bin/sh

test -f package.json || return 1

npm_server() {
  npm start
}

npm_bootstrap(){
  npm install
}

npm_test() {
  npm test
}
