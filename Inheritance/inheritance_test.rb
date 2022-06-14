require_relative "manager"
require_relative "employee"

shawna = Employee.new("Shawna", "TA",12000, "Darren")
david = Employee.new("Davd", "TA", 10000, "Darren")
darren = Manager.new("Darren", "TA Manager", 78000,  "Ned",[shawna, david])
ned = Manager.new("Ned","Founder",1000000, nil,[darren, shawna, david])


p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000