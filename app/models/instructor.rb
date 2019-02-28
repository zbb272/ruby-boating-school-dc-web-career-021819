class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
     # If there is a `BoatingTest` whose name and student match
     # the values passed in, this method should update the status
     # of that BoatingTest to 'passed'. If there is no matching test,
     # this method should create a test with the student, that boat
     # test name, and the status 'passed'. Either way, it should return
     # the `BoatingTest` instance
     boat_test =  BoatingTest.all.find do | test |
       student == test.student && test_name == test.test_name
     end

     if boat_test == nil
       boat_test = BoatingTest.new(student, test_name, "Pass", self)
     else
       boat_test.status = "Pass"
     end

     boat_test
  end

  def fail_student(student, test_name)
    # Like `#pass_student`, it should try to find a matching `BoatingTest`
    # and update its status to 'failed'. If it cannot find an existing
    # `BoatingTest`, it should create one with the name, the matching
    # student, and the status 'failed'
    boat_test =  BoatingTest.all.find do | test |
      student == test.student && test_name == test.test_name
    end

    if boat_test == nil
      boat_test = BoatingTest.new(student, test_name, "Fail", self)
    else
      boat_test.status = "Fail"
    end

    boat_test
  end
end
