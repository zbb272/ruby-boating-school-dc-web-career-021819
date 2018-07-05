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

  def self.pass_student(student_first_name, test_name)
    testtopass= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    testtopass.status= "passed"
  end

  def self.fail_student(student_first_name, test_name)
    testtofail= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name}
    testtofail.status= "failed"
  end

  def self.student_grade_percentage(student_first_name)
    studentTests= BoatingTest.all.find_all{|test| test.student.first_name == student_first_name}
    totalTests= studentTests.length.to_f
    totalPassed= studentTests.find_all{|test| test.status == "passed"}
    numPassed= totalPassed.length.to_f
    percent= (numPassed/totalTests)*100
  end
end

