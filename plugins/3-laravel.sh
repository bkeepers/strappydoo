#!/usr/bin/env bash

test -f artisan || return 1

laravel_console() {
  run php artisan tinker
}

laravel_server() {
  run php artisan serve
}

laravel_test() {
  run vendor/bin/phpunit
}