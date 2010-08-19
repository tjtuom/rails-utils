# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rails-utils}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Toni Tuominen"]
  s.date = %q{2010-08-19}
  s.description = %q{General utils for Rails development.}
  s.email = %q{toni@piranhadigital.fi}
  s.extra_rdoc_files = ["History.txt", "README.txt", "version.txt"]
  s.files = ["History.txt", "README.txt", "Rakefile", "lib/rails-utils.rb", "lib/rails-utils/flash_helper.rb", "lib/rails-utils/railtie.rb", "rails-utils.gemspec", "spec/flash_helper_spec.rb", "spec/rails-utils_spec.rb", "spec/spec_helper.rb", "version.txt"]
  s.homepage = %q{http://github.com/tjtuom/rails-utils}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rails-utils}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{General utils for Rails development}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 3.4.3"])
    else
      s.add_dependency(%q<bones>, [">= 3.4.3"])
    end
  else
    s.add_dependency(%q<bones>, [">= 3.4.3"])
  end
end
