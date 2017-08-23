#!/usr/bin/env ruby

require 'bundler'
Bundler.require

require_relative 'lib/onliner'

Onliner::Updater.start
