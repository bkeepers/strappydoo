#!/usr/bin/env bash

test -f pytest.ini || return 1

pytest_test() {
  run pytest
}
