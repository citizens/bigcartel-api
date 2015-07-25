require 'rest_client'
require 'json'

module Bigcartel
  class API
    class << self
      def get(path, params = {})
        normalize_response RestClient.get(api_url(path), headers.merge(params))
      end

      def patch(path, options = {})
        normalize_response RestClient.patch(api_url(path), options.to_json, headers.merge(content_type: 'application/vnd.api+json', accept: 'application/vnd.api+json'))
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
