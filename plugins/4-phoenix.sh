#!/usr/bin/env bash

test -f mix.exs && test -n "$(grep "phoenix" mix.exs)" || return 1

phoenix_server() {
  mix phx.server
}
