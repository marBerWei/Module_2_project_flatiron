# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.create!(name: "Alex", password: "1")

Cohort.create!(name: "071717")
Cohort.create!(name: "062617")

Student.create!(name: "Dean", cohort_id: 1, password: "2")
Student.create!(name: "Josh", cohort_id: 1, password: "2")
Student.create!(name: "Gabi", cohort_id: 1, password: "2")
Student.create!(name: "Hans", cohort_id: 2, password: "2")
Student.create!(name: "Franz", cohort_id: 2, password: "2")
 

Test.create!(name: "Module 2 Test", student_id: 1)



CohortInstructor.create!(cohort_id: 1, instructor_id: 1)