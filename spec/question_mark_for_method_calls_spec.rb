require_relative 'spec_helper'
require_relative '../employee'
require 'rspec'

# adding a question mark prevents a non-existant method from raising an error
# e = Employee.new
#
# e.transfer?(2)
#
# The above will succeed if the method exists, and not raise an error if it doesnt. It is equivalent ot .try()

describe 'Swifts Optional: question Mark for Method Calls' do

  let(:employee) {Employee.new(:department => 'Accounting', :status => 'Temp')}

  describe 'Calling a method that does not exist' do
    describe 'with a question mark' do
      it 'should not raise an error' do
        expect{
          employee.transfer?
        }.to_not raise_error
      end
    end
    describe 'without a question mark' do
      it 'should raise an error' do
        expect{
          employee.transfer
        }.to raise_error(NoMethodError)
      end
    end
  end

  describe 'Calling an existing method' do
    describe 'with a question mark' do
      it 'should call the method' do
        employee.department?.should == "Accounting"
      end
    end
    it 'should not raise an error' do
      expect{
        employee.department?
      }.not_to raise_error
    end
  end

end