require 'spec_helper'

describe Bigcartel::Order, vcr: true do
  attributes = [
    :number, :buyer_first_name, :buyer_first_name, :shipping_address_1, :shipping_address_1,
    :shipping_address_2, :shipping_city, :shipping_state, :shipping_zip, :shipping_status,
    :shipping_latitude, :shipping_longitude, :completed_at, :shipping_country, :items
  ]

  it_should_behave_like 'a findable object', ENV['BIGCARTEL_ORDER_ID'], attributes
  it_should_behave_like 'a listable object', Bigcartel::Order, attributes

  describe '.all' do
    it 'can accept parameters' do
      expect{ Bigcartel::Order.all(offset: 20) }.to_not raise_error
    end
  end
end