# Speed-cards Mnemonics

[![Build Status](https://travis-ci.org/braingourmets/speedcards-mnemonics.png?branch=master)](https://travis-ci.org/braingourmets/speedcards-mnemonics)
[![Coverage Status](https://coveralls.io/repos/braingourmets/speedcards-mnemonics/badge.png?branch=master)](https://coveralls.io/r/braingourmets/speedcards-mnemonics?branch=master)
[![Code Climate](https://codeclimate.com/github/braingourmets/speedcards-mnemonics.png)](https://codeclimate.com/github/braingourmets/speedcards-mnemonics)
[![Dependency Status](https://gemnasium.com/braingourmets/speedcards-mnemonics.png)](https://gemnasium.com/braingourmets/speedcards-mnemonics)

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
