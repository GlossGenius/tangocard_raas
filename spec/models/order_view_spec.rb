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

# Unit tests for TangocardRaas::OrderView
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OrderView' do
  before do
    # run before each test
    @instance = TangocardRaas::OrderView.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrderView' do
    it 'should create an instance of OrderView' do
      expect(@instance).to be_instance_of(TangocardRaas::OrderView)
    end
  end
  describe 'test attribute "reference_order_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
