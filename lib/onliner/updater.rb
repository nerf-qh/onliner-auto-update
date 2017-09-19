module Onliner
  class Updater
    def initialize(creds)
      @creds = creds
      @client = Requests.new(@creds[:type])
    end

    def start
      Onliner.logger.debug("Start updater: #{@creds[:login]}")
      client.authenticate unless client.authenticated?
    end

    private

    def client
      @client
    end

    def authenticated?
      false
    end

    def authenticate
      @client.authenticate
    end
  end
end
