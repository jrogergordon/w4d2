require_relative "employee"

class Manager < Employee
    attr_reader :employees
    def initialize(name, salary, title, boss, employees)
        super(name, salary, title, boss)
        @employees = employees
    end

    def bonus(multiplier)
        sum = 0
        employees.each do |ele|
            sum += ele.salary
        end
        sum * multiplier
    end

    

    
end