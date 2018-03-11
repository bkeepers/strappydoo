#!/usr/bin/env bash

PHOENIX_DEPENDENCY=$(grep "phoenix" mix.exs)
test -n "$PHOENIX_DEPENDENCY" || return 1

phoenix_server() {
  mix phx.server
}
