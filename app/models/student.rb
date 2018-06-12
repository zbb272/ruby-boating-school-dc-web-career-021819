class Student
attr_accessor :first_name, :last_name

@@all= []

def initialize(first_name, last_name)
  @first_name = first_name
  @last_name = last_name
  @@all << self
end

def self.all
  @@all
end

def full_name
  "#{first_name} #{last_name}"
end

def self.full_names
  self.all.map{|name| name.full_name}
end

def add_boating_test(name, status, instructor)
  BoatingTest.new(self, name, status, instructor)
end

def self.find_student(student_input)
  self.all.find{|student| student.full_name == student_input}
end

end
