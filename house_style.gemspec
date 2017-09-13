# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'house_style'
  spec.version       = '1.4.0'
  spec.authors       = ['Scott Matthewman']
  spec.email         = ['scott@altmetric.com']

  spec.summary       = 'A centralised store of house style rules'
  spec.description   = 'Configuration files and other snippets to help you apply standards across multiple projects'
  spec.homepage      = 'https://github.com/altmetric/house_style'
  spec.license       = 'MIT'

  spec.post_install_message = <<-ENDOFMESSAGE
If you are updating house_style from version 1.0.0 or older, note that you can
now remove any reference to TargetRubyVersion in your project's .rubocop.yml
file. You should specify a .ruby-version file for your entire project, and that
will be taken into account by rubocop also.
  ENDOFMESSAGE

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.49', '< 0.50'
  spec.add_dependency 'rubocop-rspec', '~> 1.16'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 11.0'
end
