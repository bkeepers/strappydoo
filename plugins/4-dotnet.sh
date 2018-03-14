#!/usr/bin/env bash

( test -f ".sln" || test -f ".csproj" ) || return 1

dotnet_server() {
  run dotnet run
}

dotnet_bootstrap() {
  run dotnet restore
}

dotnet_test() {
  run dotnet test
}
