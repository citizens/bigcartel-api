require 'rest_client'
require 'json'

module Bigcartel
  class API
    class << self
      def get(path)
        normalize_response RestClient.get(api_url(path), headers)
      end

      def put(path, options = {})
        normalize_response RestClient.put(api_url(path), options.to_json, headers.merge(content_type: 'application/vnd.api+json'))
      end

      private

      def headers
        { authorization: "Bearer #{Bigcartel.api_key}" }
      end

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
