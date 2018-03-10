# StrapStrap

StrapStrap is a command line tool that provides boot**strap** **s**cripts **t**o **r**un **a**ll **p**rojects. It makes it easy to switch between projects that are written in different languages without having to remember how each language handles common tasks like installint dependencies, starting a server, and running the tests.

This project is an abstraction of the [Scripts to Rule Them All](https://githubengineering.com/scripts-to-rule-them-all/) pattern that is common at GitHub.

### Usage

- `sb` - Bootstrap the projects dependencies
- `ss` - start a server
- `st` - run the tests
- `sc` - start an interactive console

## Installation

TODO

### Supported languages & frameworks

- [x] Rails
- [x] NPM
- [ ] Ruby (Gemfile, Rack, minitest, etc)
- [ ] Python (Django, …)
- [ ] ???

### TODO

- [ ] Come up with a better name. I like "Scripts to run all projects", but [strap](https://github.com/mikemcquaid/strap) is already a thing
- [ ] Extract support for each language/library into plugins
- [ ] Add full command (`strap server`) and allow sourcing aliases in shell startup scripts (e.g. `source $(strap aliases)`)
- [ ] Installation instructions
- [ ] Add support for other common languages/frameworks
- [ ] Make it easy to register custom plugins
- [ ] Distribute via homebrew
