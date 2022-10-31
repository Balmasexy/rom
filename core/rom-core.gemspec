# frozen_string_literal: true

require File.expand_path('lib/rom/core/version', __dir__)

Gem::Specification.new do |gem|
  gem.name          = 'rom-core'
  gem.summary       = 'Ruby Object Mapper'
  gem.description   = 'Persistence and mapping toolkit for Ruby'
  gem.author        = 'Piotr Solnica'
  gem.email         = 'piotr.solnica+oss@gmail.com'
  gem.homepage      = 'http://rom-rb.org'
  gem.require_paths = ['lib']
  gem.version       = ROM::Core::VERSION.dup
  gem.files         = Dir['CHANGELOG.md', 'LICENSE', 'README.md', 'lib/**/*']
  gem.license       = 'MIT'
  gem.metadata      = {
    'source_code_uri' => 'https://github.com/rom-rb/rom/tree/master/core',
    'documentation_uri' => 'https://api.rom-rb.org/rom/',
    'mailing_list_uri' => 'https://discourse.rom-rb.org/',
    'bug_tracker_uri' => 'https://github.com/rom-rb/rom/issues'
  }

  gem.required_ruby_version = '>= 2.7.0'

  gem.add_runtime_dependency 'concurrent-ruby', '~> 1.1'
  gem.add_runtime_dependency 'dry-core', '>= 1.0.0.rc1', '< 2'
  gem.add_runtime_dependency 'dry-configurable', '>= 1.0.0.rc1', '< 2'
  gem.add_runtime_dependency 'dry-inflector', '~> 0.1'
  gem.add_runtime_dependency 'dry-types', '~> 1.6'
  gem.add_runtime_dependency 'dry-struct', '~> 1.0'
  gem.add_runtime_dependency 'dry-initializer', '~> 3.0', '>= 3.0.1'
  gem.add_runtime_dependency 'transproc', '~> 1.0', '>= 1.1.0'

  gem.add_development_dependency 'rake', '~> 10.3'
  gem.add_development_dependency 'rspec', '~> 3.5'
end
