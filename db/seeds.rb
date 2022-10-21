puts "\n== Seeding the database with fixtures =="

p'Welcome!!'
p 'Deleting records'
User.delete_all

p 'Creando usuario'

user1 = User.create!(
    first_name: "Juan",
    last_name: "Arango",
    username: 'FelipeTavera1',
    organizer: true,
    email: "jftaa@hotmail.com",
  password: "password" 
)
p "#{user1.first_name} has been created!"

user2 = User.create!(
    first_name: "Andres",
    last_name: "Arango",
    username: 'AndresArango1',
    organizer: true,
    email: "andru@gmail.com",
    password: "password" 
)
p "#{user2.first_name} has been created!"

user3 = User.create!(
    first_name: "Santiago",
    last_name: "Escobar",
    username: 'Santi_escobar',
    organizer: true,
    email: "sescobar@outlook.com",
    password: "password" 
)
p "#{user3.first_name} has been created!"

p '¡Creating events!'

def create_events(user1)
    event = Event.create!(
        title: "Acompañanos a sembrar tomates",
        description: "Estaremos sembrando tomates en el huerto de la escuela, todos son bienvenidos!",
        event_date: DateTime.now ,
        address: "Escuela de la ciudad",
        user: "#{user1}"
    )
    event.save!
    p "#{event.title} has been created"
end
 p 'Hello world'