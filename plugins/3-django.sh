#!/usr/bin/env bash

test -f manage.py || return 1

django_server() {
  run .venv/bin/python manage.py runserver
}

django_console() {
  run .venv/bin/python manage.py shell
}

django_test() {
  test ! -f pytest.ini && run .venv/bin/python manage.py test
}
