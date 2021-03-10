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
reason2 = Reason.create(reason: "Sick Leave")
reason3 = Reason.create(reason: "Overtime")
reason4 = Reason.create(reason: "Family emergency")

5.times do 
    employee = Employee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, years_working: rand(1..20), username: Faker::Internet.username(specifier: 8), email: Faker::Internet.free_email, password: "pass")

    manager = Manager.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.free_email, username: Faker::Internet.username(specifier: 8), passcode: 123, password: "admin")
    
    request = Request.create(employee_id: Employee.all[rand(Employee.all.length)].id, manager_id: Manager.all[rand(Manager.all.length)].id, reason_id: Reason.all[rand(Reason.all.length)].id, explanation: Faker::Lorem.sentence(word_count: 3))
end

will = Employee.create(first_name: "will", years_working: 3, last_name: "reyes",username: "will", email: "will@gmail.com", password: "password")

ted = Manager.create(first_name: "ted", last_name: "neben", email: "ted@gmail.com", username: "ted", passcode: 123, password: "admin")

request10 = Request.create(employee_id: 2, manager_id: 6, reason_id: 3, explanation: "New Baby in the house and need more hours.")


