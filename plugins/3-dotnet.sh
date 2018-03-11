#!/usr/bin/env bash

( test -f ".sln" || test -f ".csproj" ) || return 1

dotnet_server() {
  dotnet run
}

dotnet_bootstrap() {
  dotnet restore
}

dotnet_test() {
  dotnet test
}
