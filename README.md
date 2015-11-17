# HouseStyle

Be nice and consistent from project to project.

This gem acts as a local repository for house style checkers for Ruby and Rails projects.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'house_style'
```

And then execute:

    $ bundle

## Usage

For non-Rails projects, add the following to the top of your `.rubocop.yml` file:

```yaml
inherit_gem:
  house_style: ruby/rubocop.yml
```

If your project is a Rails project, you should use the instruction below, which includes all the standard Ruby house styles, with Rails-specific cops:

```yaml
inherit_gem:
  house_style: rails/rubocop.yml
```

`house_style` comes with a Rails generator which can set up both your project root and your RSpec folder to start using the default house styles by default. With `house_style` declared in your Gemfile:

```bash
$ rails generate house_style:install
```

This will create `.rubocop.yml` files in your project root and `spec` folders.

## Development

The gem has no executable code of its own, so there is no test suite to speak of.

Before committing any changes, ensure that it conforms to its own rubocop settings.

To install this gem onto your local machine, run `bundle exec rake install`.

### Releasing a new version

Update the version number in `house_style.gemspec`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/altmetric/house_style. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

