#!/usr/bin/env bash

(
  test -f gitman.yml ||
  test -f .gitman.yml
) || return 1

gitman_bootstrap(){
  run gitman install
}
