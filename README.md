![strappydoo](https://user-images.githubusercontent.com/10660468/37246132-814011d0-2471-11e8-9d02-81d7085565af.png)

> a command line tool that provides bootstrap scripts to run all projects

Easily switch between projects that are written in different languages without having to remember how each language handles common tasks like installing dependencies, starting a server, and running the tests.

This project is an abstraction of the [Scripts to Rule Them All](https://githubengineering.com/scripts-to-rule-them-all/) pattern that is common at GitHub.

## Installation

```
$ git clone https://github.com/bkeepers/strappydoo.git ~/.strappydoo
$ ~/.strappydoo/script/install
```

### Usage

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

### Supported languages & frameworks

- [x] NPM
- [x] Homebrew
- [x] Rails
- [x] Bundler
- [x] script/*
- [ ] Ruby (Gemfile, Rack, minitest, etc)
- [ ] Python (Django, …)
- [ ] ???

Want to add support for another language or framework? Just [create a file in `plugins/`](https://github.com/bkeepers/strappydoo/new/master/plugins). Here's an example for a fictional framework called `scrappy`, defined in `plugins/scrappy.sh`:

```sh
#!/usr/bin/env bash

# Test if Scrappyfile exists or return 1 to disable this plugin
test -f Scrappyfile || return 1

# Now define a function called `{framework}_${command}` that runs the relevant command for each of:
#
# - bootstrap
# - server
# - console
# - test

scrappy_bootstrap() {
  scrappy install
}
scrappy_server() {
  scrappy run
}
scrappy_console() {
  scrappy term
}
scrappy_test() {
  scrappy test
}
```

### TODO

- [ ] tests
- [ ] Add support for other common languages/frameworks
- [ ] Make it easy to register custom plugins
- [ ] Distribute via homebrew
