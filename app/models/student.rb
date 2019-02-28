class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    test = BoatingTest.new(self, test_name, status, instructor)
    test 
  end

  def grade_percentage
  # should return the percentage of tests that the student has passed,
  # a Float (so if a student has passed 3 / 9 tests that they've taken,
  #   this method should return the Float `33.33`)
  end
end
