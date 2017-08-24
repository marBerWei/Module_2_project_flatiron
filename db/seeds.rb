# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Instructor.destroy_all
Cohort.destroy_all
Student.destroy_all
Test.destroy_all
CohortInstructor.destroy_all


alex = Instructor.create(name: "Alex", password: "1")



seven = Cohort.create(name: "071717")
six = Cohort.create(name: "062617")

Student.create(name: "Dean", cohort_id: seven.id, password: "2")
Student.create(name: "Josh", cohort_id: seven.id, password: "2")
Student.create(name: "Gabi", cohort_id: seven.id, password: "2")
Student.create(name: "Hans", cohort_id: six.id, password: "2")
Student.create(name: "Franz", cohort_id: six.id, password: "2")
 
Test.create(name: "Module 1 Test")
Test.create(name: "Module 2 Test")
Test.create(name: "Module 3 Test")
Test.create(name: "Module 4 Test")



CohortInstructor.create(cohort_id: seven.id, instructor_id: alex.id)
