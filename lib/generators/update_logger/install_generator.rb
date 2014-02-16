require 'rails/generators'
require 'rails/generators/migration'

module UpdateLogger
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include ::Rails::Generators::Migration

      source_root File.expand_path('../activity_log/templates', __FILE__)

      def generate_activity_log
        copy_file "activity_log.rb", "app/models/activity_log.rb"
      end
      class_option :with_changes, :type => :boolean, :default => false, :desc => "Record action controller operations"

      puts 'Generates (but does not run) a migration to add an activity log table.'

      def create_migration_file
        migration_template 'create_activity_logs.rb', 'db/migrate/create_activity_logs.rb'
        #migration_template 'add_object_changes_column_to_activity_log.rb', 'db/migrate/add_object_changes_column_to_activity_log.rb' if options.with_changes?
      end
      def self.next_migration_number(path)
        unless @prev_migration_nr
          @prev_migration_nr = Time.now.utc.strftime("%Y%m%d%H%M%S").to_i
        else
          @prev_migration_nr += 1
        end
        @prev_migration_nr.to_s
      end
    end
  end
end