# CHANGELOG

## 1.4.0

- updated rubocop to 0.52.0
  - rename cops with changed names and remove deprecated definitions.

## 1.3.0

- updated rubocop to 0.46.0
- Exclude `lib/tasks/cucumber.rake`, which is not intended to be edited.

## 1.2.0

- updated rubocop to 0.45.0 and rubocop-rspec to 1.8.
- Exclude `/bin`, `/vendor` and `db/schema.rb` from ever being checked by rubocop in Rails projects

## 1.1.0

- Hound-CI uses the default rubocop configuration. It will now comment on pull requests only if code is committed that conflicts with the house style. [#11]
- The generator will no longer create `db/migrate/.rubocop.yml` if the Rails `db/` is not present. [#10]
- Updated rubocop to 0.41.2 and rubocop-rspec to 1.5. This has some consequences:
    - a `TargetRubyVersion` is no longer needed, as rubocop defaults to using `.ruby-version` for identifying which version of ruby to parse against. When upgrading, it is safe to remove those lines from the host application's `.rubocop.yml` file.
    - a new `RSpec/ExampleLength` cop is disabled for now. Nice idea, but if it's a choice between long examples and not being able to deploy because of a style issue, we should take the long examples.

## 1.0.0

- Increases dependency to Rubocop 0.37.2, which changes how to specify Rails cops and introduces the requirement of a Ruby version in each project's `.rubocop.yml` file. A working value for this value will be inserted when `rails generate house_style:install` is run.
- Support for turning off cops in the Rails `db/migrate/` folder is improved to a system that should actually work.
- New cop `Style/FrozenStringLiteralComment` is disabled by default.
- New cop `Style/SignalException` is supported, using the `semantic` default to best match existing practice.

## 0.2.2

- [FIX] Revert gemspec file selection, as replacement was not correctly including the essential rubocop `.yml` files.

## 0.2.1

- [FIX] Rename generator template files so they are included in gem release.

## 0.2.0

- New defaults for `db/migrate` folders in Rails projects.
- Rails projects using `house_style` can now use a Rails generator to install the relevant house style configurations:
    - `{Rails.root}/.rubocop.yml` loads the default Rubocop config
    - `{Rails.root}/spec/.rubocop.yml` loads tweaked config for RSpec folders, including use of the `rubocop-rspec` plugin
    - `{Rails.root}/db/migrate/.rubocop.yml` ignores key rules for compatibility with Rails-generated migrations, etc.

## 0.1.1

- New `rspec/rubocop.yml` defaults.

## 0.1.0

- Initial release
