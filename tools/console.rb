require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
def test
spongebob = Student.new("Spongebob")
patrick   = Student.new("Patrick")
plankton  = Student.new("Plankton")

mrs_puff  = Instructor.new("Mrs. Puff")
squidward = Instructor.new("Squidward Tentacles")

spongebob_test1 = spongebob.add_boating_test("parking_test", "Fail", mrs_puff)
spongebob.add_boating_test("braking_test", "Fail", mrs_puff)
spongebob.add_boating_test("speeding_test", "Pass", squidward)

patrick.add_boating_test("parking_test", "Fail", mrs_puff)
patrick.add_boating_test("speeding_test", "Pass", squidward)

plankton.add_boating_test("parking_test", "Pass", squidward)
plankton.add_boating_test("braking_test", "Pass", squidward)

puts "Student Test"
puts "------------"
print "Student has first name: "
puts spongebob.first_name == "Spongebob"
print "Student.all returns all student objects: "
puts Student.all == [spongebob, patrick, plankton]
print "#add_boating_test creates a new boating test: "
puts spongebob_test1.class == BoatingTest

puts "------------"
puts "Instructor Test"
puts "------------"
print "Instructor has name: "
puts squidward.name == "Squidward Tentacles"
print "Instructor.all returns all instructors: "
puts Instructor.all == [mrs_puff, squidward]
print "#pass students: "
mrs_puff.pass_student(spongebob, "parking_test")
puts  spongebob_test1.status == "Pass"
print "#fail_student"
mrs_puff.fail_student(spongebob, "parking_test")
puts spongebob_test1.status == "Fail"

puts "------------"
puts "BoatingTest Test"
puts "------------"
print "has a student: "
puts spongebob_test1.student == spongebob
print "has a name: "
puts spongebob_test1.test_name == "parking_test"
print "has a status: "
puts spongebob_test1.status == "Fail"
print "has an instructor: "
puts spongebob_test1.instructor == mrs_puff

end
test

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
