require 'active_record'
require 'yaml'

task :default => :migrate

desc "Migrate the database through scripts in db/migrate. Target specific version with VERSION=x"
task :migrate => :environment do
    ActiveRecord::Migrator.migrate('database/migrate', ENV["VERSION"] ? ENV["VERSION"].to_i : nil )
end

task :environment do
    ActiveRecord::Base.establish_connection(YAML::load(File.open('database.yml')))
      ActiveRecord::Base.logger = Logger.new(File.open('log/database.log', 'a'))
end

