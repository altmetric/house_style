# Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/altmetric/house_style. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

Pull requests are welcome for general changes such as:

* Spelling and grammatical errors
* Creation or amendment of extra descriptions of Rubocop rules
* Support for new languages (e.g., JS, CoffeeScript, Sass, PHP)
* Anything that helps the implementation of `house_style` in other projects

However, for changes in the _house style_ itself (i.e., the various YAML files that amend, enable and disable rules) will generally only be accepted if they come from people within the Altmetric organisation.

If the rules in `house_style` are not to your taste, you could override them in individual projects - but that kind of runs counter to the `house_style` ethos. Instead, fork this gem and run your own copy, changing your `Gemfile` accordingly:

```ruby
gem 'house_style', github: 'myorganisation/house_style'
```

