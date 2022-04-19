require "employee"

class Startup
  attr_accessor :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    if salaries.key?(title)
      return true
    else
      return false
    end
  end

  def >(another_startup)
    funding > another_startup.funding
  end
  
  def hire(employee_name, title)
    if salaries.key?(title)
      @employees << Employee.new(employee_name, title)
    else
      return error
    end
  end

  def size 
    @employees.length
  end

  def pay_employee(employee)
    money_to_pay = @salaries[employee.title]

    if @funding >= money_to_pay
      employee.pay(money_to_pay)
      @funding -= money_to_pay
    else
      raise 'not enough funding!'
    end
  end

  def payday
    @employees.each do |employee| 
      self.pay_employee(employee)
    end
  end

  def average_salary
    sum = 0
    @employees.each do |employee|
      sum += @salaries[employee.title]
    end
    sum / @employees.length
  end
  
  def close 
    @employees = []
    @funding = 0
  end
end
