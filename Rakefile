# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

desc "git ci, git tag and git push"
task :release do
  version = File.read('CHANGELOG.md')[/v([\d\.]+) /, 1]
  sh "git diff HEAD"
  v = "v#{version}"
  puts "release as #{v}? [y/N]"
  break unless $stdin.gets.chomp == "y"

  sh "git ci -am '#{v}'"
  sh "git tag '#{v}'"
  sh "git push origin master --tags"
  sh "bundle exec cap production deploy"
end
