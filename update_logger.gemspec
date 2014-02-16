Gem::Specification.new do |s|
  s.name        = 'update_logger'
  s.version     = '0.0.2'
  s.date        = '2014-01-31'
  s.summary     = "Very simple Rails controller action logging"
  s.description = "Very simple gem to record controller actions"
  s.authors     = ["Julian Rawcliffe"]
  s.email       = 'julianrawcliffe@gmail.com'
  s.files       = ["lib/update_logger.rb",
                   "lib/generators/update_logger/install_generator.rb",
                   "lib/generators/update_logger/activity_log/templates/activity_log.rb",
                   "lib/generators/update_logger/activity_log/templates/create_activity_logs.rb",
                   "lib/update_logger/activity_log.rb", "lib/update_logger/version.rb"]
  s.homepage    = 'https://github.com/slugbucket/update_logger'
  s.license       = 'GPLv2'
end