require 'test/unit'
require_relative '../lib/resource_pool'

Dir[ File.join(File.dirname(__FILE__), "**", "*_test.rb") ].each {|filepath| require filepath }