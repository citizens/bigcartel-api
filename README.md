# Bigcartel

The bigcartel-api gem is a ruby wrapper for interacting with the Bigcartel API.
Developed for [Hipment](http://hipment.com).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bigcartel-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bigcartel-api

## Getting Started

This gem requires a Bigcartel OAuth access token. There is a Bigcartel omniauth strategy here: [https://github.com/citizens/omniauth-bigcartel](https://github.com/citizens/omniauth-bigcartel)
## Authentication

```ruby
Bigcartel.api_key = 'YOUR ACCESS TOKEN'
```

## Account
To get information about the authenticated account:

```ruby
Bigcartel::Account.retrieve
```

## Orders
To get all orders:

```ruby
Bigcartel::Order.all
```

To get a particular order:

```ruby
Bigcartel::Order.find(order_number)
```

## Contributing

1. Fork it ( https://github.com/citizens/bigcartel-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request