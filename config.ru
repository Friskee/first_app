# This file is used by Rack-based servers to start the application.

require 'application'

set :run, false
set :environment, :production

FileUtils.mkdir_p 'log' unless File.exists?('log')
log = File.new("log/first_app.log", "a")
$stdout.reopen(log)
$stderr.reopen(log)

run FirstApp::Application
