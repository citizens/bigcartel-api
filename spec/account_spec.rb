require 'spec_helper'

describe Bigcartel::Account, vcr: true do
  it_should_behave_like 'a retrievable object', Bigcartel::Account, [
    :id, :subdomain, :store_name, :contact_email, :url, :website
  ]
end