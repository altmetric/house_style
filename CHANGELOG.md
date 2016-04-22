# CHANGELOG

## master

- Hound-CI uses the default rubocop configuration. It will now comment on pull requests only if code is committed that conflicts with the house style. [#11]
- The generator will no longer create `db/migrate/.rubocop.yml` if the Rails `db/` is not present. [#10]

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
