puts "\n== Seeding the database =="

p 'Deleting records'
Rake::Task['db:reset'].invoke

p 'Generating users'

user1 = User.create!(
  first_name: "Juan",
  last_name: "Arango",
  username: 'FelipeTavera1',
  email: "jftaa@hotmail.com",
  password: "password"
)
p "#{user1.first_name} has been created!"

user2 = User.create!(
  first_name: "Jhon",
  last_name: "Doe",
  username: 'Jhoncito',
  email: "jhon@email.com",
  password: "password"
)
p "#{user2.first_name} has been created!"

user3 = User.create!(
  first_name: "Santiago",
  last_name: "Escobar",
  username: 'SantiEscobar',
  email: "sescobar@outlook.com",
  password: "password"
)
p "#{user3.first_name} has been created!"

p '¡Creating events!'

event1 = Event.create!(
  title: "Sembremos tomates",
  description: "Estaremos sembrando tomates en el huerto de la escuela, todos son bienvenidos!",
  event_date: DateTime.new(2022, 11, 30, 18, 0, 0),
  address: "Escuela de la ciudad",
  user: user1
)
p "#{event1.title} has been created"

event2 = Event.create!(
  title: "Mejor sin plasticos",
  description: "Estaremos recolectando todos los residuos plasticos que tengas en tu hogar con el fin de dar una adecuada disposición de dichos elementos!",
  event_date: DateTime.new(2022, 12, 30, 9, 0, 0),
  address: "Cancha de futbol - El playón",
  user: user1
)
p "#{event2.title} has been created"

event3 = Event.create!(
  title: "Sembraton de arboles",
  description: "Acompañanos a sembrar arboles en el cerro quitasol.!",
  event_date: DateTime.new(2022, 11, 26, 7, 0, 0),
  address: "Cerro Quitasol - Bello",
  user: user3
)
p "#{event3.title} has been created"

event4 = Event.create!(
  title: "Limpieza de parque",
  description: "Te invitamos a ser parte de la limpieza del parque recreativo de Andalucía, limpiar nuestras zonas de recreación será indispensable para poder disfrutarlas en su totalidad!",
  event_date: DateTime.new(2022, 12, 4, 8, 0, 0),
  address: "Parque recreativo Andalucía - Metrocable",
  user: user3
)
p "#{event4.title} has been created"

event5 = Event.create!(
  title: "Entrega de semillas de arboles",
  description: "A futuro Medellín planea ser una ciudad reforestada; por ello, teniendo una visión a furturo, queremos que seas parte de este proyecto y que puedas ayudar con dicha actividad en nuestra bella ciudad de Medellín !",
  event_date: DateTime.new(2022, 12, 11, 13, 0),
  address: "Jardín Botánico de Medellín",
  user: user3
)
p "#{event5.title} has been created"

event6 = Event.create!(
  title: "Limpieza de separadores viales en la Oriental",
  description: "Debido a la alta circulación de vehiculos por esta zona, hay una alta presencia de basuras de todo en este separador vial. Esta es una zona principal de la ciudad que debe permanecer limpia y tu podrás ser parte de este cambio y servir de ejemplo para otras personas... ¡Te esperamos!",
  event_date: DateTime.new(2022, 11, 15, 17, 30, 0),
  address: "Avenida Oriental -centro de Medellín.",
  user: user3
)
p "#{event6.title} has been created"

p '¡Creating comments!'
comment1 = event6.comments.create!(
  user: user1,
  content: "¡Excelente iniciativa!"
)
p "#comment '#{comment1.content}' has been created"

comment2 = event6.comments.create!(
  user: user3,
  content: "¡Me encantaría participar!"
)
p "#comment '#{comment2.content}' has been created"

p '¡Creating Posts!'

post2 = user3.posts.create!(
  content: "Ayer estuve en el evento de sembrar tomates, fue una experiencia muy bonita y gratificante, espero que pronto se puedan realizar más eventos de este tipo!"
)
p "#post '#{post2.content[0..25]}...' has been created"

post1 = Post.create!(
  content: "¡Hola! Soy Juan, soy un apasionado por la ecología y la naturaleza, me encantaría que me acompañaras en mis eventos y que juntos podamos hacer un cambio en nuestra ciudad!",
  user: user1
)
p "'#{post1.content[0..25]}...' has been created"

comment3 = post1.comments.create!(
  user: user3,
  content: "¡Ahí voy a estar Juan!"
)
p "#comment '#{comment3.content}' has been created"

comment4 = post1.comments.create!(
  user: user1,
  content: "¡Yo también, voy a llevar a mis amigos!"
)
p "#comment '#{comment4.content}' has been created"
