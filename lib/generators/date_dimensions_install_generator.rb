module KgDatawarehouse
  class DateDimensionsInstallGenerator < ::Rails::Generators::Base
      include ::Rails::Generators::Migration

      source_root File.expand_path('../templates', __FILE__)

      desc 'Generates (but does not run) a migration to add date dimensions tables.'

      def create_migration_file
        migration_template 'date_dimensions/create_date_dimensions.rb', 'db/migrate/create_kg_datawarehouse_date_dimensions.rb'
      end

      def self.next_migration_number(dirname)
        ::ActiveRecord::Generators::Base.next_migration_number(dirname)
      end
    end
end