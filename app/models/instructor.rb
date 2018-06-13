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

  def fail_student(student_first_name, test_name)
    testtofail= BoatingTest.all.find{|test| test.student.first_name == student_first_name && test.name == test_name && test.instructor == self}
    testtofail.status= "failed"
  end
end
