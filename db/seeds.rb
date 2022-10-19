puts "\n== Seeding the database with fixtures =="
system("rails db:fixtures:load")

p 'creando'

User.create!(
  first_name: "admin",
  last_name: "greenly",
  username: "admincito",
  organizer: true,
  email: "jhon@email.com",
  encrypted_password:  Devise::Encryptor.digest(User, 'password') 
)
p 'creando usuario'