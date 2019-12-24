# -*- encoding: utf-8 -*-
# stub: ruby_snowflake_client 0.1.1 x86_64-darwin-18 lib
# stub: ext/ruby_snowflake_client/extconf.rb

Gem::Specification.new do |s|
  s.name = "ruby_snowflake_client".freeze
  s.version = "0.1.1"
  s.platform = "x86_64-darwin-18".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["CarGurus".freeze]
  s.date = "2020-01-02"
  s.description = "Uses the c static library libsnowflakeclient to connect to and communicate with Snowflake. That library uses curl.\nThis library is much faster than using ODBC especially for large result sets and avoids ODBC butchering of timezones.\n".freeze
  s.email = "dmitchell@cargurus.com".freeze
  s.extensions = ["ext/ruby_snowflake_client/extconf.rb".freeze]
  s.files = ["ext/ruby_snowflake_client/extconf.rb".freeze]
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Snowflake connect for Ruby".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rubygems-tasks>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
      s.add_dependency(%q<rubygems-tasks>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_dependency(%q<rubygems-tasks>.freeze, [">= 0"])
  end
end
