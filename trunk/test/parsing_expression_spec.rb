require 'rubygems'
require 'spec/runner'

dir = File.dirname(__FILE__)
require "#{dir}/spec_helper"

context "A parsing expression" do
  setup do
    @expression = ParsingExpression.new
  end
  
  specify "returns a ZeroOrMore parsing expression with itself as the repeated expression on call to zero_or_more" do
    zero_or_more = @expression.zero_or_more
    zero_or_more.should_be_an_instance_of ZeroOrMore
    zero_or_more.repeated_expression.should_equal @expression
  end
end