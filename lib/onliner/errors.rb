module Onliner
  module Errors
    class Error < RuntimeError
    end

    class Authenticate < Error
    end
  end
end
