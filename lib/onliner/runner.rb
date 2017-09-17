module Onliner
  class Runner
    def initialize
      read_config
      init_logger
    end

    def run
      Onliner.logger.debug('Start')
      @config.logins.each do |creds|
        Updater.new(creds.symbolize_keys).start
      end
    end

    private

    def read_config
      @config = Config.new
    end

    def init_logger
      log_file = File.open('log/debug.log', 'a')
      Onliner.logger = Logger.new(MultiIO.new(STDOUT, log_file))
    end
  end
end
