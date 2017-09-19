module Onliner
  module Auth
    class Twitter < Root
      def initialize
      end

      def auth(params)
      end

      def popup_url(res)
        res.body.match(/(?<=networks\.twitter\.url = ")(.)*(?=";)/).to_s
      end
    end
  end
end
