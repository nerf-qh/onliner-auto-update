module Onliner
  class Requests
    def initialize(type)
      @ouid = nil
      @auth_client =
        case type
        when 'twitter'
          Auth::Twitter.new
        end
    end

    def authenticate
      login = login_page
      binding.pry
      url = @auth_client.popup_url(login)

      case login
      when Net::HTTPSuccess then
        auth_form = auth_page(url)
        @auth_client.auth(url)
      else
        Onliner.logger.error(login)
        raise Onliner::Errors::Authenticate
      end
    end

    def authenticated?; end


    private

    def login_page
      url = 'https://user.api.onliner.by/login'
      Onliner.logger.debug("authenticate: #{url}")
      resp = get(url)
      Onliner.logger.debug(resp)
      Onliner::Debugger.save(resp, 'login.html')
    end

    def auth_page(url)
      Onliner.logger.debug("auth_page: #{url}")
      resp = get(url)
      Onliner.logger.debug(resp)
      Onliner::Debugger.save(auth_page, 'login.html')
    end
    def get(url)
      Net::HTTP.get_response(URI(url))
    end
  end
end
