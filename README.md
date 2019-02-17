# Weather

With Weather you can get weather for location IP via [apixu](https://apixu.com/my/) or [metaweather](https://metaweather.com/api/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weather'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install weather

## Usage
Has cli
```
$ weather --service apixu London
{
  "location": "London",
  "temperature": 13.0,
  "air_pressure": 1015.0,
  "wind_speed": 19.1,
  "humidity": 58
}

$ weather --service metaweather London
{
  "location": "London",
  "temperature": 12.115,
  "air_pressure": 1021.72,
  "wind_speed": 13.61,
  "humidity": 74
}
$ weather --help
Usage: weather [options] location(required)
        --service SERVICE (required) avaibale services: apixu, metaweather
    -h, --help                       print this help message.
        --version                    show weather version
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/weather.
