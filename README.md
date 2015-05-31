# Barkdog

Barkdog is a tool to manage [Datadog monitors](http://docs.datadoghq.com/guides/monitoring/).

It defines Datadog monitors using Ruby DSL, and updates monitors according to DSL.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'barkdog'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install barkdog

## Usage

```sh
export BARKDOG_API_KEY=...
export BARKDOG_APP_KEY=...

barkdog -e -o Barkfile
vi Barkfile
barkdog -a --dry-run
barkdog -a
```

## Help

```
Usage: barkdog [options]
        --api-key API_KEY
        --app-key APP_KEY
    -a, --apply
    -f, --file FILE
        --dry-run
    -e, --export
    -o, --output FILE
        --no-color
        --debug
    -h, --help
```

## Barkfile example

```ruby
monitor "Check load avg", :type=>"metric alert" do
  query "avg(last_5m):avg:ddstat.load_avg.1m{host:i-XXXXXXXX} > 1"
  message "@winebarrel@example.net"
  options do
    notify_no_data true
    no_data_timeframe 2
    notify_audit true
    silenced({})
  end
end
```