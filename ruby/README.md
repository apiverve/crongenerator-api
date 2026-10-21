# Cron Expression Generator API - Ruby Gem

Cron Expression Generator converts natural language schedule text into standard five-field cron expressions. Submit phrases up to 200 characters to receive the matching cron syntax, with paid plans adding written explanations.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_crongenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_crongenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_crongenerator'

# Initialize the client
client = APIVerve::Crongenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ schedule: "every weekday at 9am" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ schedule: "every weekday at 9am" })
  puts response["data"]
rescue APIVerve::Crongenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Crongenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Crongenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "schedule": "every weekday at 9am",
    "expression": "0 9 * * 1-5",
    "description": "Runs every weekday at 9:00 AM."
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/crongenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/crongenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/crongenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
