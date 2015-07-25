module Bigcartel
  class BigcartelObject < RecursiveOpenStruct
    class << self
      def all(params = {})
        resp = Bigcartel::API.get(root_path, params: params)
        resp['data'].map { |object| self.new(object) }
      end

      def find(id)
        response = Bigcartel::API.get("#{root_path}/#{id}")
        self.new(response)
      end

      def root_path
        class_name = self.to_s.gsub(/^.*::/, '').downcase
        "/#{class_name}s"
      end
    end
  end
end