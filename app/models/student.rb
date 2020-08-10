class Student

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def add_boating_test(student, test_name, test_status, instructor)
        BoatingTest.new(student, test_status, test_status, instructor)
    end

    def all_instructors_help
        BoatingTest.all.select do |test|
            test.student == self
        end
    end
                                            #Coming these into one
    def all_instructors
        all_instructors_help.map do |test|
            test.instructor
        end
    end 

    def self.find_student(student_name)
        self.all.filter do |student|
            student.name == student_name
        end 
    end
    
    def grade_percentage
        passed_tests = BoatingTest.all.select do |test|
            test.test_status == "passed" && test.student == self
        end
        num_of_passed_tests = passed_tests.length.to_f
        total_tests = BoatingTest.all.select do |test|
            test.student == self
        end 
        num_of_tests = total_tests.length.to_f
        percent = (num_of_passed_tests/num_of_tests) * 100
    end

    def self.all
        @@all
    end 

end






