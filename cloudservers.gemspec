require './lib/cloudservers/version'

Gem::Specification.new do |s|
  s.name = %q{cloudservers}
  s.version = CloudServers::VERSION

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["H. Wade Minter", "Mike Mayo", "Dan Prince"]
  s.date = %q{2011-02-02}
  s.description = %q{A Ruby API to version 1.0 of the Rackspace Cloud Servers product.}
  s.email = %q{minter@lunenburg.org}
  s.post_install_message = %Q{
**** PLEASE NOTE **********************************************************************************************

  #{s.name} has been deprecated. Please consider using fog (http://github.com/fog/fog) for all new projects.

***************************************************************************************************************
} if s.respond_to? :post_install_message
  s.extra_rdoc_files = [
    "README.rdoc",
    "TODO"
  ]
  s.files = [
    "CHANGELOG",
    "COPYING",
    "README.rdoc",
    "Rakefile",
    "TODO",
    "cloudservers.gemspec",
    "lib/cloudservers.rb",
    "lib/cloudservers/authentication.rb",
    "lib/cloudservers/connection.rb",
    "lib/cloudservers/entity_manager.rb",
    "lib/cloudservers/exception.rb",
    "lib/cloudservers/flavor.rb",
    "lib/cloudservers/image.rb",
    "lib/cloudservers/server.rb",
    "lib/cloudservers/shared_ip_group.rb",
    "lib/cloudservers/version.rb",
    "test/cloudservers_authentication_test.rb",
    "test/cloudservers_connection_test.rb",
    "test/cloudservers_exception_test.rb",
    "test/cloudservers_servers_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = %q{https://github.com/rackerlabs/ruby-cloudservers}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rackspace Cloud Servers Ruby API}
  s.test_files = [
    "test/cloudservers_authentication_test.rb",
    "test/cloudservers_connection_test.rb",
    "test/cloudservers_exception_test.rb",
    "test/cloudservers_servers_test.rb",
    "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
  end
end

