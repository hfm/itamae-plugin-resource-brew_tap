# Itamae::Plugin::Resource::Tap

Homebrew tap resource for [Itamae](https://github.com/itamae-kitchen/itamae).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itamae-plugin-resource-tap'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itamae-plugin-resource-tap

## Usage

```ruby
require "itamae/plugin/resource/tap"

tap "peco/peco"
package "peco"

tap "sanemat/font"
package "ricty"

# execute `brew untap homebrew/dupes`
tap "homebrew/dupes" do
  action :delete
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake false` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tacahilo/itamae-plugin-resource-tap.
