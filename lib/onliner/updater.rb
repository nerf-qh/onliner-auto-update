module Onliner
  class Updater
    def initialize(creds)
      @creds = creds
      @requests = Requests.new
    end

    def start
      Onliner.logger.debug("Start updater: #{@creds[:login]}")
    end

    def authenticate
      @requests.auth
    end
  end
end
