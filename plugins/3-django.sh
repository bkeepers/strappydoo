#!/usr/bin/env bash

test -f manage.py || return 1

django_server() {
  run python manager.py server
}

django_console() {
  run python manager.py shell
}

django_test() {
  test ! -f pytest.ini && run python manager.py test
}
