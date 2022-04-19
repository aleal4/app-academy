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

  end
end
