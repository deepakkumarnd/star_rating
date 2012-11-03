 #-*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |gem|
  gem.name                 = "star_rating"
  gem.version              = "0.0.1"
  gem.authors              = ["Deepak"]
  gem.email                = ["deepakkumarnd@gmail.com"]
  gem.homepage             = ""
  gem.summary              = %q{ A simple gem for creating star rating }
  gem.description          = %q{ A simple gem for creating star rating }
  gem.files                = `git ls-files`.split("\n")
  gem.test_files           = gem.files.grep(/^(spec|test|features)/)
  gem.require_paths        = ["lib"]
  gem.add_runtime_dependency "rails"
end
