require_relative 'spec_helper'
require 'rspec'

# adding a question mark prevents a non-existant method from raising an error
# e = Employee.new
#
# e.transfer?(2)
#
# The above will succeed if the method exists, and not raise an error if it doesnt. It is equivalent ot .try()
describe 'Question Mark for Method Calls' do
  it 'should not raise an error if a method doesnt exist' do
    str = "sample string"
    expect{
      str.blargafast?
    }.to_not raise_error
  end
  it 'should raise an error if a method doesnt exist and the question mark is not present' do
    str = "sample string"
    expect{
      str.blargafast
    }.to raise_error(NoMethodError)
  end
end