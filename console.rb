require 'pry'
require_relative './app/models/boatingtest'
require_relative './app/models/instructor'
require_relative './app/models/student'

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
no_crashing = spongebob.add_boating_test(spongebob, "Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test(patrick, "Power Steering 202", "failed", puff)
power_steering_pass_patrick = patrick.add_boating_test(patrick, "Power Steering 201", "passed", krabs)
power_steering_pass_spongebob = patrick.add_boating_test(spongebob, "Power Steering 207", "passed", krabs)



binding.pry