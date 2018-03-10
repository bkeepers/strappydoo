# strappydoo

> a command line tool that provides bootstrap scripts to run all projects

Easily switch between projects that are written in different languages without having to remember how each language handles common tasks like installing dependencies, starting a server, and running the tests.

This project is an abstraction of the [Scripts to Rule Them All](https://githubengineering.com/scripts-to-rule-them-all/) pattern that is common at GitHub.

### Usage

- `strappy bootstrap` - Bootstrap the projects dependencies
- `strappy server` - start a server
- `strappy test` - run the tests
- `strappy console` - start an interactive console

## Installation

TODO

### Supported languages & frameworks

- [x] Rails
- [x] NPM
- [x] Homebrew
- [x] script/*
- [ ] Ruby (Gemfile, Rack, minitest, etc)
- [ ] Python (Django, …)
- [ ] ???

### TODO

- [ ] allow sourcing aliases in shell startup scripts (e.g. `source $(strappy aliases)`)
- [ ] Installation instructions
- [ ] Add support for other common languages/frameworks
- [ ] Make it easy to register custom plugins
- [ ] Distribute via homebrew
