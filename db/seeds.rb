puts "\n== Seeding the database with fixtures =="

p'Welcome!!'
p 'Deleting records'
User.delete_all
Event.delete_all

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
    username: 'SantiEscobar',
    organizer: true,
    email: "sescobar@outlook.com",
    password: "password" 
)
p "#{user3.first_name} has been created!"


p '¡Creating events!'

event = Event.create!(
    title: "Sembremos tomates",
    description: "Estaremos sembrando tomates en el huerto de la escuela, todos son bienvenidos!",
    event_date: DateTime.new(2022,11,30,18,0,0) ,
    address: "Escuela de la ciudad",
    user: user1
)
event.save!
p "#{event.title} has been created" 

event = Event.create!(
    title: "Mejor sin plasticos",
    description: "Estaremos recolectando todos los residuos plasticos que tengas en tu hogar con el fin de dar una adecuada disposición de dichos elementos!",
    event_date: DateTime.new(2022,12.3,9,0,0) ,
    address: "Cancha de futbol - El playón",
    user: user1
)
event.save!
p "#{event.title} has been created" 

event = Event.create!(
    title: "Sembraton de arboles",
    description: "Acompañanos a sembrar arboles en el cerro quitasol.!",
    event_date: DateTime.new(2022,11,26,7,0,0) ,
    address: "Cerro Quitasol - Bello",
    user: user2
)
event.save!
p "#{event.title} has been created"

event = Event.create!(
    title: "Limpieza de parque",
    description: "Te invitamos a ser parte de la limpieza del parque recreativo de Andalucía, limpiar nuestras zonas de recreación será indispensable para poder disfrutarlas en su totalidad!",
    event_date: DateTime.new(2022,12,04,8,0,0),
    address: "Parque recreativo Andalucía - Metrocable",
    user: user2
)
event.save!
p "#{event.title} has been created"

event = Event.create!(
    title: "Estrega de semillas de arboles",
    description: "A futuro Medellín planea ser una ciudad reforestada; por ello, teniendo una visión a furturo, queremos que seas parte de este proyecto y que puedas ayudar con dicha actividad en nuestra bella ciudad de Medellín !",
    event_date: DateTime.new(2022,12,11,13,00),
    address: "Jardín Botánico de Medellín",
    user: user3
)
event.save!
p "#{event.title} has been created"

event = Event.create!(
    title: "Limpieza de separadores viales en la Oriental",
    description: "Debido a la alta circulación de vehiculos por esta zona, hay una alta presencia de basuras de todo en este separador vial. Esta es una zona principal de la ciudad que debe permanecer limpia y tu podrás ser parte de este cambio y servir de ejemplo para otras personas... ¡Te esperamos!",
    event_date: DateTime.new(2022,11,15,17,30,0) ,
    address: "Avenida Oriental -centro de Medellín.",
    user: user3
)
event.save!
p "#{event.title} has been created"