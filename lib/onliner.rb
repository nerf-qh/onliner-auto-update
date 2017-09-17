require_relative 'onliner/runner'
require_relative 'onliner/requests'
require_relative 'onliner/config'
require_relative 'onliner/updater'
require_relative 'onliner/multi_io'

module Onliner
  class << self
    attr_accessor :logger
  end
end
