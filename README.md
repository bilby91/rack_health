# RackHealth

rack_health helps you out when you want to provide an endpoint for health checks / ping. It is very useful if you have an application behind a load balancer that checks the health of the instances.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rack_health', require: 'rack/health'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack_health

## Usage

### Rails

Just add this line to your `application.rb`. Choose the `path` you like.

```
    config.middleware.insert_before ::Rails::Rack::Logger, 'Rack::Health', {
      path: '/health/check'
    }
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bilby91/rack_health.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

