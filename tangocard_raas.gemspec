# -*- encoding: utf-8 -*-

=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

$:.push File.expand_path('../lib', __FILE__)
require 'tangocard_raas/version'

Gem::Specification.new do |s|
  s.name        = 'tangocard_raas'
  s.version     = TangocardRaas::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['OpenAPI-Generator', 'Egor Dovnar']
  s.email       = ['']
  s.homepage    = 'https://openapi-generator.tech'
  s.summary     = 'Tango Card RaaS API Ruby Gem'
  s.description = '<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.'
  s.license     = 'Unlicensed'
  s.required_ruby_version = '> 2.0'

  s.add_runtime_dependency 'faraday', '~> 0.13.0'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ['lib']
end
