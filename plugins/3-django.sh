#!/usr/bin/env bash

test -f manage.py || return 1

django_server() {
  run python manage.py server
}

django_console() {
  run python manage.py shell
}

django_test() {
  test ! -f pytest.ini && run python manage.py test
}
