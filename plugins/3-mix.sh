#!/usr/bin/env bash

test -n mix.exs || return 1

mix_bootstrap(){
  mix deps.get
}

mix_console() {
  iex -S mix
}

mix_test() {
  mix test
}
