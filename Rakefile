require 'rubygems'
require './lib/cloudservers.rb'
require 'rake/testtask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "cloudservers"
    gemspec.summary = "Rackspace Cloud Servers Ruby API"
    gemspec.description = "A Ruby API to version 1.0 of the Rackspace Cloud Servers product."
    gemspec.email = "minter@lunenburg.org"
    gemspec.homepage = "https://github.com/rackspace/ruby-cloudservers"
    gemspec.authors = ["H. Wade Minter","Mike Mayo", "Dan Prince"]
    gemspec.add_dependency 'json'
    gemspec.post_install_message = %Q{
**** PLEASE NOTE **********************************************************************************************

  #{gemspec.name} has been deprecated. Please consider using fog (http://github.com/fog/fog) for all new projects.

***************************************************************************************************************
} if gemspec.respond_to? :post_install_message
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install jeweler"
end

  Rake::TestTask.new(:test) do |t|
    t.pattern = 'test/*_test.rb'
    t.verbose = true
  end
  Rake::Task['test'].comment = "Unit"
