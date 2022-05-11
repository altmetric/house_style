# CHANGELOG

## CURRENT
### Bug fixes
- Install db_migrate.yml only if `db/migrate/` folder exists rather than just `db/` folder.
### New features
- Add new configuration for feature tests inside `features/` folder.

## 2.1.0
- Enable NewCops by default
- Support Rubocop up to 1.22.x and latest extensions

## 2.0.2
### Bug fixes
- Exclude Guardfile from Ruby & Rails configurations

## 2.0.1
### Bug fixes
- Ignore other database schemas in /db for Rails apps
- Disable `RSpec/MultipleExpectations` cop.
- Tweak `RSpec/MultipleMemoizedHelpers` to 10.

## 2.0.0
### New features

- Add new rubocop extensions: rubocop-performance & rubocop-rake. Both enabled by default on Ruby configuration.

### Bug fixes

- Restrict extensions versions to avoid introducing new cops in the apps depending on house_style without previously configuing them here.
- Exclude most Rails default configuration files for our cops to decrease the number of conflicts during Rails upgrades.

### Changes

- Update Travis CI configuration and add a default Rake task (rubocop)
- Upgrade development dependencies: Bundler & Rake.
- Upgrade rubocop to 1.15.0, rubocop-rails to 2.10.1 and rubocop-rspec to 2.3.0.
- Remove old pre-1.0 post-install message.

## 1.6.0
- [FIX] Require Rubocop higher than 0.49 to fix security issue: https://nvd.nist.gov/vuln/detail/CVE-2017-8418
- [FIX] Rename `IndentHash` to `IndentFirstHashElement`, and require Rubocop 0.68 or higher because of this change.
- Rails cops are now split into a different gem `rubocop-rails` that we include by default.
- Disable new Rails cops InverseOf & HasManyOrHasOneDependent.
- Exclude spec files for Lint/AmbiguousBlockAssociation as recommended in https://github.com/rubocop-hq/rubocop/issues/4222#issuecomment-290655562
- Exclude specific rake configuration file for RSpec/ContextWording.
- Specify `indented` as the default value for `IndentFirstArrayElement`.
- Enforce `single_quotes` for `StringLiterals` by default.


## 1.5.1
- [FIX] Remove `Include` values. Since 0.57 `Include` overwrites the hardcoded defaults. All values here are already included in the defaults, so no point in defining them here anymore.
- [FIX] `SpaceInsideHashLiteralBraces` now belongs to `Layout` instead of `Style`
- [FIX] Disabling new added cop `Style/AccessModifierDeclarations`. We use inline declarations (`private :foo :bar`) as default in our codebase.

## 1.5.0
- updated rubocop to 0.63.1

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
