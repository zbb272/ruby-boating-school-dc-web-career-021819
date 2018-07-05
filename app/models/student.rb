class Student

attr_accessor :first_name, :last_name

@@all= []

def initialize(first_name)
@first_name = first_name
@@all << self
end

def self.all
  @@all
end

def add_boating_test(name, status, instructor)
  BoatingTest.new(self, name, status, instructor)
end

def self.find_student(student_first_name)
  self.all.find{|student| student.first_name == student_first_name}
end

end
