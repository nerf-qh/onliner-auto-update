require_relative 'onliner/runner'
require_relative 'onliner/requests'
require_relative 'onliner/auth'
require_relative 'onliner/config'
require_relative 'onliner/updater'
require_relative 'onliner/multi_io'
require_relative 'onliner/debugger'

module Onliner
  class << self
    attr_accessor :logger
  end
end
