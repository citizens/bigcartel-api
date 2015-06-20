require 'recursive-open-struct'
require "bigcartel/version"
require "bigcartel/api"
require "bigcartel/bigcartel_object"
require "bigcartel/account"
require "bigcartel/order"

module Bigcartel
  class << self
    attr_accessor :api_key
  end
end
