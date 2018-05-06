# -*- encoding: utf-8 -*-
# stub: static_model 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "static_model".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aaron Quint".freeze]
  s.date = "2015-03-06"
  s.description = "StaticModel provides a Base class much like ActiveRecord which supports reading from a YAML file and basic associations to ActiveRecord".freeze
  s.email = "aaron@quirkey.com".freeze
  s.extra_rdoc_files = ["README.rdoc".freeze]
  s.files = ["README.rdoc".freeze]
  s.homepage = "http://github.com/quirkey/static_model".freeze
  s.rubyforge_project = "quirkey".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "ActiveRecord like functionalities for reading from YAML with a simple class implementation".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 1.0.2", "~> 1.0"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.5"])
      s.add_development_dependency(%q<mocha>.freeze, [">= 1.1.0", "~> 1.1"])
      s.add_development_dependency(%q<rubigen>.freeze, [">= 1.5.7"])
      s.add_development_dependency(%q<shoulda-context>.freeze, ["~> 1.2"])
    else
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 1.0.2", "~> 1.0"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.5"])
      s.add_dependency(%q<mocha>.freeze, [">= 1.1.0", "~> 1.1"])
      s.add_dependency(%q<rubigen>.freeze, [">= 1.5.7"])
      s.add_dependency(%q<shoulda-context>.freeze, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 1.0.2", "~> 1.0"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.5"])
    s.add_dependency(%q<mocha>.freeze, [">= 1.1.0", "~> 1.1"])
    s.add_dependency(%q<rubigen>.freeze, [">= 1.5.7"])
    s.add_dependency(%q<shoulda-context>.freeze, ["~> 1.2"])
  end
end
