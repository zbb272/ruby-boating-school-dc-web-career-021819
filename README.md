# mod1-code-review-boating-school

Welcome to Boating School!  A Spongebob activity that simulates a system that tracks the Boating Tests happening.  We have three models - 'Student', 'Instructor', and 'BoatingTest'.

Associations:

* An 'Instructor' has many 'BoatingTests'

* A 'Student' has many 'BoatingTests'

* A 'BoatingTest' belongs to a 'Student' and an 'Instructor'

'Student' class:
* should initialize with first_name and last_name
* Student.all should return all of the student instances
* Student.full_names should return an array of all of the students full names
* Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
* return all boating Tests for that student
* check boating test status
* return all instructors for that student


'BoatingTest' class:
* should initialize with name and status
* BoatingTest.all returns an array of all boating tests
* BoatingTest#student returns student object for that boating test
* return boating test statuses

'Instructor' class:
* init with name
* return all students
* return a student and see all their failed statuses
* return all boating tests you supervised

Run ruby tools/console.rb to seed
