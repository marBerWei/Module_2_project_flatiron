# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Instructor.create(name: "Alex")

Cohort.create(name: "071717")

Student.create(name: "Dean", instructor_feedback: "You did a great job on your test", cohort_id: 1)
 

Test.create(name: "Module 2 Test", student_id:1)



CohortInstructor.create(cohort_id: 1, instructor_id: 1)