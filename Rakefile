require_relative 'config/boot'
Bundler.require
Dir["./tasks/*.rb"].each {|file| require file }

namespace :db do
  desc 'Run db migrations'
  task :create do
    ActiveRecord::Base.establish_connection adapter:'postgresql', database: 'postgres'
    ActiveRecord::Base.connection.create_database Settings.database.database
  end

  task :drop do
    ActiveRecord::Base.establish_connection adapter:'postgresql', database: 'postgres'
    ActiveRecord::Base.connection.drop_database Settings.database.database
  end

  task :migrate do
    ActiveRecord::Migrator.migrate('db/migrate', ENV['VERSION'].presence.try(:to_i))
  end

  desc 'Run db rollback'
  task :rollback do
    ActiveRecord::Migrator.down('db/migrate', ENV['VERSION'].presence.try(:to_i))
  end
end

namespace :service do

  desc 'Run console'
  task :console do
    pry
  end

end
