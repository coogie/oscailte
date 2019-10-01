# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "oscailte"
  spec.version       = "0.1.0"
  spec.authors       = ["Stephen Coogan"]
  spec.email         = ["hello@coog.ie"]

  spec.summary       = "Oscailte — A powerful, clean, and responsive Jekyll theme."
  spec.homepage      = "https://github.com/coogie/oscailte"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.8.5"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.5.0"
  spec.add_runtime_dependency "jekyll-avatar", "~> 0.6.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.11.0"
  
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
end
