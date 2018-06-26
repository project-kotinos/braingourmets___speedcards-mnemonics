# Speed-cards Mnemonics

[![Build Status](https://travis-ci.org/braingourmets/speedcards-mnemonics.svg?branch=master)](https://travis-ci.org/braingourmets/speedcards-mnemonics)
[![Code Climate](https://codeclimate.com/github/braingourmets/speedcards-mnemonics.svg)](https://codeclimate.com/github/braingourmets/speedcards-mnemonics)
[![Coverage Status](https://coveralls.io/repos/braingourmets/speedcards-mnemonics/badge.svg?branch=master)](https://coveralls.io/r/braingourmets/speedcards-mnemonics?branch=master)

This application provides a database for creating mnemonics for two-card
playing card pairs for speed cards.


## Installation

  1. Run bundle install.
  2. cp config/local_env_template.yml to config/local_env.yml.
  3. rake secret, and copy the generated secret key base to config/local_env.yml.
  4. Set the hostname (e.g. localhost) in config/local_env.yml.


### Environment and hosting

This application is a single-user application without any built-in
authentication. It is mostly intended to be run locally. If you run it on a
remote server, you will need to set up basic authentication for access control.


## Prerequisites

  * Ruby >= 2.0
  * Rails 4.1


## Rake tasks

### yard

The `yard` rake task builds the documentation in `doc/api/`. If there already is
some documentation in this directory, this task will overwrite it.

### doc

The `doc` rake task builds the documentation in `doc/`. If there already is
some documentation in this directory, this task will _not_ overwrite it.

It is recommended to generally use the `yard` task instead.
