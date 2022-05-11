require 'rails/generators'
require 'rails/generators/base'

module HouseStyle
  class InstallGenerator < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    end

    def create_root_rubocop_yml
      template 'rubocop.yml', '.rubocop.yml'
    end

    def create_rspec_rubocop_yml
      template 'rspec-rubocop.yml', 'spec/.rubocop.yml'
    end

    def create_db_migrate_rubocop_yml
      template 'db_migrate_rubocop.yml', 'db/migrate/.rubocop.yml' if Dir.exist?(db_path)
    end

    def create_features_rubocop_yml
      template 'features_rubocop.yml', 'features/.rubocop.yml' if Dir.exist?(features_path)
    end

    private

    def db_path
      File.join(Rails.root, 'db')

    def features_path
      File.join(Rails.root, 'features')
    end
  end
end
