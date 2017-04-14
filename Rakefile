#!/usr/bin/env ruby

require 'html-proofer'

task :proof do
  options = { :assume_extension => true }
  HTMLProofer.check_directory("./_site").run
end
