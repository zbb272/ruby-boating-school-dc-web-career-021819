class Instructor

attr_accessor :name

@@all= []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

   def pass_student(student_first_name, test_name)
    testtopass= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    puts testtopass
    if testtopass
      testtopass.status= "passed"
    else
      student= Student.all.find{|student| student.first_name == student_first_name}
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

def fail_student(student_first_name, test_name)
    testtofail= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    if testtofail
      testtofail.status= "failed"
    else
      student= Student.all.find{|student| student.first_name == student_first_name}
      BoatingTest.new(student, test_name, "failed", self)
    end
  end

end

