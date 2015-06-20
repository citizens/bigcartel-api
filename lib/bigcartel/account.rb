module Bigcartel
  class Account < BigcartelObject
    class << self
      def retrieve
        response = Bigcartel::API.get("/account")
        self.new(response)
      end

      def root_path
        '/account'
      end
    end
  end
end