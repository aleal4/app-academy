require "employee"

class Startup
  attr_reader :employees
  attr_accessor :name, :funding, :salaries

  def initialize(name, funding, salaries)
    @employees = []
  end
end
