require_relative '../employee'

describe 'Employee object' do

  let(:employee) {Employee.new(:department => 'Accounting', :status => 'Temp')}

  it 'should allow creating an object with named parameters' do
    employee.should be_a Employee
  end
  it 'should know the value for department' do
    employee.department.should == 'Accounting'
  end
  it 'should know the value for status' do
    employee.status.should == 'Temp'
  end
  it 'should know if the employee is a temp' do
    employee.should be_temp
  end

end
