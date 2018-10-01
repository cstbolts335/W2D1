class Employee
  attr_reader :name, :salary, :title
  attr_accessor :boss

  def initialize(name, title, salary, bonus)
    @name = name
    @title = title
    @salary = salary
    self.boss = boss
  end

  def bonus(multiplier)
    @salary * multiplier
  end

  def boss=(boss)
    @boss = boss
    boss.add_employee(self) unless boss.nil?
    boss
  end

  private
  attr_reader :bonus

end #end of the employee class


class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss = nil)
    super(name, title, salary, boss)
    @employees = []
  end
                                            #use @ symbol b/c for each instance of manager class
                                            #(i.e. every manager is a differnt instance of the class) //next line
                                            #each manager has a different set of suboordinate employees,
                                            #so employees must be an instance variable for each respective manager

  def add_employee(employee)
    employees << employee
    employee                    #return employee so we can see which employee we are dealing with in each instance, does not modify anything
  end

  def bonus(multiplier)
    bonus = (employee.bonus) * multiplier
  end

  def total_subsalary
    total_subsalary = 0
    self.employees.each do |employee|
      if employee.is_a?(Manager)
        total_subsalary += employee.salary + employee.total_subsalary   # if set a variable name in a method that is the same as the method name
      else                                                              # the method name is overwritten within the method
        total_subsalary += employee.salary                              # (i.e. "total_subsalary" variable in "total_subsalary" method)
      end
    end
    total_subsalary
  end
end
