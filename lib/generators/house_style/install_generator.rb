require 'rails/generators'
require 'rails/generators/base'

module HouseStyle
  class InstallGenerator < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    end

    def create_root_rubocop_yml
      template 'rubocop.yml', '.rubocop.yml', assigns: { ruby_version: ruby_version }
    end

    def create_rspec_rubocop_yml
      template 'rspec-rubocop.yml', 'spec/.rubocop.yml'
    end

    def create_db_migrate_rubocop_yml
      template 'db_migrate_rubocop.yml', 'db/migrate/.rubocop.yml' if Dir.exist?(db_path)
    end

    private

    def ruby_version
      major, minor, _teeny = RUBY_VERSION.split('.')
      "#{major}.#{minor}"
    end

    def db_path
      File.join(Rails.root, 'db')
    end
  end
end
