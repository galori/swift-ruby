class Employee

  attr_accessor :department, :status

  def initialize(options)
    @department = options.delete(:department)
    @status = options.delete(:status)
  end

  def temp?
    @status == 'Temp'
  end
end