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
            if test.student == student && test.test_name == test_name
                BoatingTest.all.map do |test|
                    test.status = "passed"
                end
            else
                BoatingTest.new(student, test_name, "passed", self)
            end
    end 
    
    def fail_student(student, test_name)
        failed_test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name}
        if failed_test
            failed_test.status = "failed"
        else
            BoatingTest.new(student, test_name, "failed", self)
        end 
    end

    def all_students
        BoatingTest.all.select {|test| test.instructor == self}.map {|test| test.student}
    end 
        

    def self.all
        @@all
    end 

end
