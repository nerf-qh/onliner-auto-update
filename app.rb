#!/usr/bin/env ruby

require 'bundler'
require 'net/http'
require 'yaml'
require 'logger'
require 'active_support/core_ext/object'

Bundler.require

require_relative 'lib/onliner'

Onliner::Runner.new.run
