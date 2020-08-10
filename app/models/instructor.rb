class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def passed_students
        tests = BoatingTest.all.filter do |test|
            test.instructor == self && test.test_status == "passed"
        end
        tests.map do |test|
            test.student 
        end 
    end

    def pass_student(student, test_name)
        if BoatingTest.all.find {|test| test.test_name && test.student}
             

    end 

    def self.all
        @@all
    end 

end
