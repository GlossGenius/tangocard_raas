=begin
#Tango Card RaaS API

#<p>Welcome to the RaaS&reg; API – with this RESTful API you can integrate a global reward or incentive program into your app or platform.<br /><br /> This console works in our Sandbox environment. To receive your own credentials or to ask questions, please contact us at <a href=\"mailto:devsupport@tangocard.com\">devsupport@tangocard.com</a>.

The version of the OpenAPI document: 2

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TangocardRaas::StandardRewardEmailTemplateDefault
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StandardRewardEmailTemplateDefault' do
  before do
    # run before each test
    @instance = TangocardRaas::StandardRewardEmailTemplateDefault.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StandardRewardEmailTemplateDefault' do
    it 'should create an instance of StandardRewardEmailTemplateDefault' do
      expect(@instance).to be_instance_of(TangocardRaas::StandardRewardEmailTemplateDefault)
    end
  end
  describe 'test attribute "identifier"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["PLATFORM", "CUSTOMER", "ACCOUNT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

end
