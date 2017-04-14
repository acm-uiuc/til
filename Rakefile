#!/usr/bin/env ruby

require 'html-proofer'
require 'mdspell'
require 'rspec/core/rake_task'

task :test do 
  RSpec::Core::RakeTask.new(:spec)
  Rake::Task["spec"].execute
  options = { :assume_extension => true }
  HTMLProofer.check_directory("./_site").run
end

task :html do
  options = { :assume_extension => true }
  HTMLProofer.check_directory("./_site").run
end

task :proof do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = 'spec/spelling_spec.rb'
  end
  Rake::Task["spec"].execute
end
