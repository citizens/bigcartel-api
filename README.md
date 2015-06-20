# Bigcartel

The bigcartel gem is a ruby wrapper for interacting with the [Bigcartel API](https://github.com/Bigcartel/bigcartel-api). 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bigcartel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bigcartel

## Getting Started

You will need a Bigcartel API key. For instructions on finding your API key: http://help.bigcartel.com/article/76-using-the-bigcartel-api

## Authentication

```ruby
Bigcartel.api_key = 'YOUR API KEY'
```
Alternatively you can set your API key as an environment variable:

```ruby
ENV['BIDSKETCH_API_KEY'] = 'YOUR API KEY'
```
## Clients
To get all clients:

```ruby
Bigcartel::Client.all
```

To get a particular client:

```ruby
Bigcartel::Client.find(id)
```

## Fees

To get all fees:

```ruby
Bigcartel::Fee.all
```

To get a particular fee:

```ruby
Bigcartel::Fee.find(id)
```

## Proposals

To get all proposals:

```ruby
Bigcartel::Proposal.all
```

To get a particular proposal:

```ruby
Bigcartel::Proposal.find(id)
```

## Sections

To get all sections

```ruby
Bigcartel::Section.all
```

To get a particular section:

```ruby
Bigcartel::Section.find(id)
```

## Templates

To get all templates:

```ruby
Bigcartel::Template.all
```

To get a particular template:

```ruby
Bigcartel::Template.find(id)
```

## Contributing

1. Fork it ( https://github.com/citizens/bigcartel-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request