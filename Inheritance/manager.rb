require_relative "employee"

class Manager < Employee
    attr_reader :employees
    def initialize(name, salary, title, boss, employees)
        super(name, salary, title, boss)
        @employees = employees
    end

    def bonus(multiplier)
        sum = 0
        @employees.each do |ele|
            if ele.is_a?(Manager)
                sum += ele.salary + ele.bonus(1)
            else
                sum += ele.salary
            end
        end
        sum * multiplier
    end
    
end