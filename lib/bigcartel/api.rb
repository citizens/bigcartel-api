require 'rest_client'
require 'json'

module Bigcartel
  class API
    class << self
      def get(path)
        normalize_response RestClient.get(api_url(path), authorization: "Bearer #{Bigcartel.api_key}")
      end

      private

      def base_url
        "https://api.bigcartel.com"
      end

      def normalize_response(response)
        JSON.parse(response)
      end

      def api_url(path)
        "#{base_url}#{path}"
      end
    end
  end
end
