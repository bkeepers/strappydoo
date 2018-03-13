#!/usr/bin/env bash

test -f pytest.ini || return 1

pytest_test() {
  test -f Pipfile && run pipenv run pytest || run pytest
}