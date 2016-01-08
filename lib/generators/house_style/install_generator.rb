require 'rails/generators'
require 'rails/generators/base'

module HouseStyle
  class InstallGenerator < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    end

    def create_root_rubocop_yml
      copy_file '.rubocop.yml', '.rubocop.yml'
    end

    def create_rspec_rubocop_yml
      copy_file '.rspec-rubocop.yml', 'spec/.rubocop.yml'
    end

    def create_db_migrate_rubocop_yml
      copy_file 'db_migrate_rubocop.yml', 'db/migrate/.rubocop.yml'
    end
  end
end
