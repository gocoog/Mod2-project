# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Reason.destroy_all
Employee.destroy_all
Manager.destroy_all
Request.destroy_all

reason = Reason.create(reason: "Vacation Time")
reason = Reason.create(reason: "Sick Leave")
reason = Reason.create(reason: "Overtime")
reason = Reason.create(reason: "Family emergency")


5.times do 
    employee = Employee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, years_working: rand(1..20), username: Faker::Internet.username(specifier: 8), email: Faker::Internet.free_email, password: "pass")

    manager = Manager.create(username: Faker::Internet.username(specifier: 8), passcode: 123, password: "admin")
    
    request = Request.create(employee_id: employee.id, manager_id: manager.id, reason_id: rand(1..4), explanation: Faker::Lorem.sentence(word_count: 3))
end

will = Employee.create(first_name: "will", years_working: 3, last_name: "reyes",username: "will", email: "will@gmail.com", password: "password")

ted = Manager.create(username: "ted", passcode: 123, password: "admin")