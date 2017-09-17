module Onliner
  class Config
    PATH = 'config/creds.yml'.freeze

    def initialize
      read
    end

    def logins
      @config[:logins]
    end

    private

		def file
			File.read(PATH)
		end

    def read
      @config = YAML.safe_load(file).symbolize_keys!
    end
  end
end
