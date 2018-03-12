![strappydoo](https://user-images.githubusercontent.com/10660468/37246132-814011d0-2471-11e8-9d02-81d7085565af.png)

> a command line tool that provides bootstrap scripts to run all projects

Easily switch between projects that are written in different languages without having to remember how each language handles common tasks like installing dependencies, starting a server, and running the tests.

This project is an abstraction of the [Scripts to Rule Them All](https://githubengineering.com/scripts-to-rule-them-all/) pattern that is common at GitHub.

## Installation

```
$ git clone https://github.com/bkeepers/strappydoo.git ~/.strappydoo
$ ~/.strappydoo/script/install
```

## Usage

- `strappy bootstrap` - Bootstrap dependencies
- `strappy setup` - Set up the project's initial state
- `strappy console` - Start an interactive console
- `strappy server` - Start the server
- `strappy test` - Run the tests

Setup aliases by appending the following to your shell startup scripts (`.profile`, `.bash_profile`, `.zshrc`, etc):

```
alias sb="strappy bootstrap"
alias sc="strappy console"
alias ss="strappy server"
alias st="strappy test"
```

Now when you clone and start working on a new project, you can  run `sb` to install dependencies, `ss` to start the server, and `st` to run the tests.

## Supported languages & frameworks

`strappy` should _just work_ with all of these tools:

- `script/{bootstrap,setup,console,server,test}` - Uses any existing [Scripts To Rule Them All](https://github.com/github/scripts-to-rule-them-all) in place of everything else

- [brew bundle](https://github.com/Homebrew/homebrew-bundle) - Installs dependencies listed in `Brewfile` from Homebrew during `bootstrap`

- [nodenv](https://github.com/nodenv/nodenv) - Installs the Node version defined in `.node-verson` during `bootstrap`

- [nvm](https://github.com/creationix/nvm) - Installs the Node version defined in `.nvmrc` during `bootstrap`

- [pyenv](https://github.com/pyenv/pyenv) - Installs the Python version defined in `.python-verson` during `bootstrap`

- [rbenv](https://github.com/rbenv/rbenv) - Installs the Ruby version defined in `.ruby-verson` during `bootstrap`

- [bundler](http://bundler.io/) - Installs Ruby dependencies declared in `Gemfile` during `bootstrap`

- [django](http://bundler.io/) - Uses `manager.py` to run the server, tests, and console

- [dotnet](https://docs.microsoft.com/en-us/dotnet/core/tools/?tabs=netcore2x) - Uses `dotnet` CLI to restore dependencies and run the server and tests

- [npm](https://www.npmjs.com/) - Runs `npm` to install dependencies and run the server and tests

- [pip](https://pip.pypa.io/en/stable/) - Installs python dependencies declared in `requirements.txt` during `bootstrap`

- [pipenv](https://docs.pipenv.org/) - Installs python dependencies declared in `Pipfile` during `bootstrap`

- [pytest](https://docs.pytest.org/) - Runs the tests with `pytest`

- [rails](http://rubyonrails.org/) - Uses `bin/rails` to run the server, tests, and console

- [yarn](https://yarnpkg.com/) - Uses `yarn` to install dependencies and run the server and tests

- [mix](https://hexdocs.pm/mix/Mix.html) - Uses `mix` to install dependencies and run the console and tests

- [phoenix](http://phoenixframework.org/) - Uses `mix` to run the server

- [composer](https://getcomposer.org/) - Installs PHP dependencies declared in `composer.json` during `bootstrap`

## Adding new plugins

Want to add support for another language or framework? [Create a script in `plugins/`](https://github.com/bkeepers/strappydoo/new/master/plugins). Here's an example for a fictional framework called `shaggy`, defined in `plugins/3-shaggy.sh`:

```sh
#!/usr/bin/env bash

# Test if config file exists or return 1 to disable this plugin
test -f Shaggyfile || return 1

# Now define a function called `${framework}_${command}` that runs the relevant command for each of:
#
# - bootstrap
# - server
# - console
# - test

shaggy_bootstrap() {
  run shaggy install
}
shaggy_server() {
  run shaggy start
}
shaggy_console() {
  run shaggy term
}
shaggy_test() {
  run shaggy test
}
```

Scripts are run in order, so prefix them with a number that coincides with the type of tool:

- `0-mytool.sh` - Manual overrides
- `1-mytool.sh` - System libraries
- `2-mytool.sh` - Programming languages
- `3-mytool.sh` - Programming frameworks
