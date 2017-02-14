ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end
task :default => [:spec]
desc 'run Rspec specs'
task :spec do
  sh 'rspec spec'
end
