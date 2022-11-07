puts "\n== Seeding the database =="

p 'Generating users...'

user1 = User.create!(
  first_name: "Juan",
  last_name: "Arango",
  username: 'FelipeTavera1',
  email: "jftaa@hotmail.com",
  password: "password"
)
user1.photo.attach(io: File.open('app/assets/images/users/juan.jpg'),
                   filename: 'juan.jpg', content_type: 'image/jpg')
p "#{user1.first_name} has been created!"

user2 = User.create!(
  first_name: "Jhon",
  last_name: "Arango",
  username: 'Jhoncito',
  email: "jhon@email.com",
  password: "password"
)
user2.photo.attach(io: File.open('app/assets/images/users/jhon.jpg'),
                   filename: 'jhon.jpg', content_type: 'image/jpg')
p "#{user2.first_name} has been created!"

user3 = User.create!(
  first_name: "Santiago",
  last_name: "Escobar",
  username: 'SantiEscobar',
  email: "sescobar@outlook.com",
  password: "password"
)
user3.photo.attach(io: File.open('app/assets/images/users/santiago.jpg'),
                   filename: 'santiago.jpg', content_type: 'image/jpg')
p "#{user3.first_name} has been created!"

user4 = User.create!(
  first_name: "Duvan",
  last_name: "Felipe",
  username: 'duvanfoz',
  email: "duvan@email.com",
  password: "password"
)
user4.photo.attach(io: File.open('app/assets/images/users/duv.jpg'),
                   filename: 'duv.jpg', content_type: 'image/jpg')
p "#{user4.first_name} has been created!"

user5 = User.create!(
  first_name: "Carlos Andres",
  last_name: "Gomez",
  username: 'carlosandres',
  email: "carlosg@email.com",
  password: "password"
)
user5.photo.attach(io: File.open('app/assets/images/users/carlos.jpg'),
                   filename: 'carlos.jpg', content_type: 'image/jpg')
p "#{user5.first_name} has been created!"

user6 = User.create!(
  first_name: "Pedro Pablo",
  last_name: "Montoya",
  username: 'pedrom',
  email: "pedromon@email.com",
  password: "password"
)
user6.photo.attach(io: File.open('app/assets/images/users/pedro.jpg'),
                   filename: 'pedro.jpg', content_type: 'image/jpg')
p "#{user6.first_name} has been created!"

user7 = User.create!(
  first_name: "Angela",
  last_name: "Velez",
  username: 'angvel',
  email: "angvel@email.com",
  password: "password"
)
user7.photo.attach(io: File.open('app/assets/images/users/angela.jpg'),
                   filename: 'angela.jpg', content_type: 'image/jpg')
p "#{user7.first_name} has been created!"

user8 = User.create!(
  first_name: "Maria",
  last_name: "Cardona",
  username: 'mariacar',
  email: "mariac@email.com",
  password: "password"
)
user8.photo.attach(io: File.open('app/assets/images/users/maria.jpg'),
                   filename: 'maria.jpg', content_type: 'image/jpg')
p "#{user8.first_name} has been created!"

user9 = User.create!(
  first_name: "Corina",
  last_name: "Mendez",
  username: 'corimendez',
  email: "corimendez@email.com",
  password: "password"
)
user9.photo.attach(io: File.open('app/assets/images/users/corina.jpg'),
                   filename: 'corina.jpg', content_type: 'image/jpg')
p "#{user9.first_name} has been created!"

user10 = User.create!(
  first_name: "Andrea",
  last_name: "Cortes",
  username: 'acortes',
  email: "acortes@email.com",
  password: "password"
)
user10.photo.attach(io: File.open('app/assets/images/users/andrea.jpg'),
                    filename: 'andrea.jpg', content_type: 'image/jpg')
p "#{user10.first_name} has been created!"

p 'Creating events!'

event1 = Event.new(
  title: "Sembremos tomates",
  description: "Estaremos sembrando tomates en el huerto de la escuela, todos son bienvenidos!",
  event_date: DateTime.new(2022, 11, 30, 18, 0, 0),
  address: "Escuela de la ciudad",
  user: user1
)
event1.photo.attach(io: File.open('app/assets/images/events/sembrat.jpg'),
                    filename: 'sembrat.jpg', content_type: 'image/jpg')
event1.save!
p "#{event1.title} has been created"

event2 = Event.new(
  title: "Mejor sin plasticos",
  description: "Estaremos recolectando todos los residuos plasticos que tengas en tu hogar con el fin de dar una adecuada disposición de dichos elementos!",
  event_date: DateTime.new(2022, 12, 30, 9, 0, 0),
  address: "Cancha de futbol - El playón",
  user: user1
)
event2.photo.attach(io: File.open('app/assets/images/events/plastico.jpg'),
                    filename: 'plastico.jpg', content_type: 'image/jpg')
event2.save!
p "#{event2.title} has been created"

event3 = Event.new(
  title: "Sembraton de arboles",
  description: "Acompañanos a sembrar arboles en el cerro quitasol!",
  event_date: DateTime.new(2022, 11, 26, 7, 0, 0),
  address: "Cerro Quitasol - Bello",
  user: user3
)
event3.photo.attach(io: File.open('app/assets/images/events/siembra.jpg'),
                    filename: 'siembra.jpg', content_type: 'image/jpg')
event3.save!
p "#{event3.title} has been created"

event4 = Event.new(
  title: "Limpieza de parque",
  description: "Te invitamos a ser parte de la limpieza del parque recreativo de Andalucía, limpiar nuestras zonas de recreación será indispensable para poder disfrutarlas en su totalidad!",
  event_date: DateTime.new(2022, 12, 4, 8, 0, 0),
  address: "Parque recreativo Andalucía - Metrocable",
  user: user3
)
event4.photo.attach(io: File.open('app/assets/images/events/compromiso.jpg'),
                    filename: 'compromiso.jpg', content_type: 'image/jpg')
event4.save!
p "#{event4.title} has been created"

event5 = Event.new(
  title: "Entrega de semillas de arboles",
  description: "A futuro Medellín planea ser una ciudad reforestada; por ello, teniendo una visión a furturo, queremos que seas parte de este proyecto y que puedas ayudar con dicha actividad en nuestra bella ciudad de Medellín !",
  event_date: DateTime.new(2022, 12, 11, 8, 0, 0),
  address: "Jardín Botánico de Medellín",
  user: user5
)
event5.photo.attach(io: File.open('app/assets/images/events/compromiso.jpg'),
                    filename: 'compromiso.jpg', content_type: 'image/jpg')
event5.save!
p "#{event5.title} has been created"

event6 = Event.new(
  title: "Limpieza de separadores viales en la Oriental",
  description: "Debido a la alta circulación de vehiculos por esta zona, hay una alta presencia de basuras de todo en este separador vial. Esta es una zona principal de la ciudad que debe permanecer limpia y tu podrás ser parte de este cambio y servir de ejemplo para otras personas... ¡Te esperamos!",
  event_date: DateTime.new(2022, 11, 15, 17, 30, 0),
  address: "Avenida Oriental -centro de Medellín.",
  user: user7
)
event6.photo.attach(io: File.open('app/assets/images/events/oriental.jpg'),
                    filename: 'oriental.jpg', content_type: 'image/jpg')
event6.save!
p "#{event6.title} has been created"

event7 = Event.new(
  title: "Recolección de residuos en el parque de la 33",
  description: "El parque de la 33 es uno de los parques más grandes de la ciudad, por ello, es importante que se mantenga limpio y en buen estado para que todos los ciudadanos puedan disfrutarlo. ¡Te esperamos!",
  event_date: DateTime.new(2022, 11, 18, 9, 30, 0),
  address: "Parque de la 33 - Medellín",
  user: user2
)
event7.photo.attach(io: File.open('app/assets/images/events/recoleccion.jpg'),
                    filename: 'recoleccion.jpg', content_type: 'image/jpg')
event7.save!
p "#{event7.title} has been created"

event8 = Event.new(
  title: "Sembraton de arboles en Girardota",
  description: "Acompañanos a sembrar arboles para mejorar la calidad de vida de los habitantes de la ciudad de Girardota y los alredores!",
  event_date: DateTime.new(2022, 11, 21, 8, 30, 0),
  address: "Girardota - Antioquia",
  user: user1
)
event8.photo.attach(io: File.open('app/assets/images/events/sembrat.jpg'),
                    filename: 'sembrat.jpg', content_type: 'image/jpg')
event8.save!
p "#{event8.title} has been created"

event9 = Event.new(
  title: "Limpieza de la playa en el caribe",
  description: "La playa de la ciudad de Cartagena es una de las más hermosas del país, por ello, es importante que se mantenga limpia y en buen estado para que todos los ciudadanos puedan disfrutarla. ¡Te esperamos!",
  event_date: DateTime.new(2022, 11, 25, 17, 30, 0),
  address: "Playa de Cartagena - Bolivar",
  user: user5
)
event9.photo.attach(io: File.open('app/assets/images/events/playas.jpg'),
                    filename: 'playas.jpg', content_type: 'image/jpg')
event9.save!
p "#{event9.title} has been created"

event10 = Event.new(
  title: "Evento de enseñanza del cuidado del medio ambiente a niños",
  description: "En este evento, los niños aprenderán sobre el cuidado del medio ambiente y como pueden ayudar a cuidarlo. ¡Te esperamos!",
  event_date: DateTime.new(2022, 11, 14, 17, 30, 0),
  address: "Avenida Oriental -centro de Medellín.",
  user: user3
)
event10.photo.attach(io: File.open('app/assets/images/events/educacion.jpg'),
                     filename: 'educacion.jpg', content_type: 'image/jpg')
event10.save!
p "#{event10.title} has been created"

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

comment3 = event10.comments.create!(
  user: user4,
  content: "¡Quiero ser parte de esto, el futuro del planeta está en nuestras manos !"
)
p "#comment '#{comment3.content}' has been created"

comment4 = event4.comments.create!(
  user: user4,
  content: "¡Los parques de nuestra ciudad dan una gran impresión de lo que somos como comunidad, quiero ayudar a mejorar el aspecto de nuestros barrios!"
)
p "#comment '#{comment4.content}' has been created"

comment5 = event8.comments.create!(
  user: user7,
  content: "Los arboles son parte vital de nuestra vida, la tala de arboles nos afecta a todos, ¡que buena iniciativa!"
)
p "#comment '#{comment5.content}' has been created"

comment6 = event4.comments.create!(
  user: user10,
  content: "¡Woow! que buen plan, estaré presente, quiero invitar a mis amig@s"
)
p "#comment '#{comment6.content}' has been created"

comment7 = event8.comments.create!(
  user: user1,
  content: "Que bonita forma de dejar huella en nuestro planeta, saber que somos parte del cambio es muy gratificante"
)
p "#comment '#{comment7.content}' has been created"

comment8 = event5.comments.create!(
  user: user2,
  content: "¡Quiero semillas para mi! No me lo pierdo"
)
p "#comment '#{comment8.content}' has been created"

comment9 = event5.comments.create!(
  user: user1,
  content: "¿De que arboles van a entregar semillas?"
)
p "#comment '#{comment9.content}' has been created"

comment10 = event1.comments.create!(
  user: user9,
  content: "Esta es una buena practica porque no solo le enseñamos a los niños, también es una gran oportunidad para que la escuela pueda cocinar con sus propios productos"
)
p "#comment '#{comment10.content}' has been created"

comment11 = event1.comments.create!(
  user: user4,
  content: "quiero aprender y luego implementaro en mi casa, quiero cocinar con tomates frescos jajaja"
)
p "#comment '#{comment11.content}' has been created"

comment12 = event2.comments.create!(
  user: user8,
  content: "Que bonita iniciativa muchachos, sabemos que el plastico es un gran problema y uno de los principales agentes contaminantes del medio hambiente."
)
p "#comment '#{comment12.content}' has been created"

comment13 = event2.comments.create!(
  user: user5,
  content: "Que triste que no podré asistir, espero que para una próxima ocasion pueda ser parte de tan linda labor"
)
p "#comment '#{comment13.content}' has been created"

comment14 = event5.comments.create!(
  user: user6,
  content: "Creo que son Cedros y Acacias amarillas y rojas; Ojalá tengan de otras especies."
)
p "#comment '#{comment14.content}' has been created"

comment15 = event7.comments.create!(
  user: user8,
  content: "Tenemos que llevar implementos para la recolección y bolsas? 
  O en el lugar nos dan todos los implementos?"
)
p "#comment '#{comment15.content}' has been created"

comment16 = event7.comments.create!(
  user: user5,
  content: "Creo que solo debemos llevar guantes, en el lugar nos dan los demás implementos"
)
p "#comment '#{comment16.content}' has been created"

comment17 = event10.comments.create!(
  user: user4,
  content: "Quiero participar, creo que podría compartir un poco de mi conocimiento en el area si en algún momento lo requieren"
)
p "#comment '#{comment17.content}' has been created"

comment18 = event10.comments.create!(
  user: user1,
  content: "Ojalá en mi epoca hubieramos tenido estas oportunidades de cuidar el medio hambiente y así tener un poco mas de conciencia... ¡Deseo participar!"
)
p "#comment '#{comment18.content}' has been created"

comment19 = event9.comments.create!(
  user: user8,
  content: "Quiero invertir mi tiempo de vacaciones en este lindo proyecto, me encanta el mar y por ende quiero apoyar este tipo de iniciativas... ¡Es genial!"
)
p "#comment '#{comment19.content}' has been created"

comment20 = event9.comments.create!(
  user: user6,
  content: "Me encanta esta actividad, nuestro mayor deseo es disfrutar de estas hermosas playas totalmente limpias"
)
p "#comment '#{comment20.content}' has been created"


p '¡Creating Posts!'

post1 = Post.new(
  content: "¡Hola! Soy Juan, soy un apasionado por la ecología y la naturaleza, me encantaría que me acompañaras en mis eventos y que juntos podamos hacer un cambio en nuestra ciudad!",
  user: user1
)
post1.photo.attach(io: File.open('app/assets/images/posts/sembraton.jpg'), filename: 'sembraton.jpg', content_type: 'image/jpg')
post1.save!
p "'#{post1.content[0..25]}...' has been created"

post2 = user3.posts.new(
  content: "Ayer estuve en el evento de siembra de arboles en Girardota, fue una experiencia muy bonita y gratificante, espero que pronto se puedan realizar más eventos de este tipo!
  os dejo esta foto de la actividad!"
)
post2.photo.attach(io: File.open('app/assets/images/posts/girardota.jpg'), filename: 'girardota.jpg', content_type: 'image/jpg')
post2.save!
p "#post '#{post2.content[0..25]}...' has been created"

post3 = user5.posts.new(
  content: "Hoy conocí esta red social por medio de un evento que se llevo a cabo en mi barrio, estoy emocionado de poder ayudar a mi ciudad y a mi país, estaré presente en la próxima actividad!"
)
post3.photo.attach(io: File.open('app/assets/images/posts/limpieza_ciudad.jpg'), filename: 'limpieza_ciudad.jpg', content_type: 'image/jpg')
post3.save!
p "#post '#{post3.content[0..25]}...' has been created"

post4 = user7.posts.new(
  content: "Que increibles personas he conocido hoy, quiero compartir con todos ustedes esta foto de la limpieza en la playa que realizamos el pasado sábado!"
)
post4.photo.attach(io: File.open('app/assets/images/posts/playas.jpg'), filename: 'playas.jpg', content_type: 'image/jpg')
post4.save!
p "#post '#{post4.content[0..25]}...' has been created"

post5 = user2.posts.new(
  content: "Aquí esta mi sobrino, aprendiendo y conociendo más sobre la mejor forma de cuidar nuestro planeta!"
)
post5.photo.attach(io: File.open('app/assets/images/posts/sobrino.jpg'), filename: 'sobrino.jpg', content_type: 'image/jpg')
post5.save!
p "#post '#{post5.content[0..25]}...' has been created"

post6 = user8.posts.new(
  content: "Gracias a las diferentes actividades en las que he participado sobre huertas, he podido realizar mi propia huerta en casa"
)
post6.photo.attach(io: File.open('app/assets/images/posts/huerta-casera.jpg'), filename: 'huerta-casera.jpg', content_type: 'image/jpg')
post6.save!
p "#post '#{post6.content[0..25]}...' has been created"

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

comments3 = post3.comments.create!(
  user: user8,
  content: "También conocí esta red social de una forma muy similar y particular, un día caminando por el bario de mi novia vi un grupo de personas limpiando un parque, les pregunté de donde salió la iniciativa y así empezé a utilizar esta maravillosa red social."
)
p "#coment '#{comments3.content}' has been created"

_attendance1 = Attendance.create!(
  user: user1,
  event: event10,
  attendance_status: "Going"
)
p "#{user1.first_name} is attending #{event10.title}"

_attendance2 = Attendance.create!(
  user: user3,
  event: event10,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event10.title}"

_attendance3 = Attendance.create!(
  user: user5,
  event: event10,
  attendance_status: "Going"
)
p "#{user5.first_name} is attending #{event10.title}"

_attendance4 = Attendance.create!(
  user: user7,
  event: event10,
  attendance_status: "Going"
)
p "#{user7.first_name} is attending #{event10.title}"

_attendance5 = Attendance.create!(
  user: user2,
  event: event10,
  attendance_status: "Maybe"
)
p "#{user2.first_name} is attending #{event10.title}"

_attendance6 = Attendance.create!(
  user: user8,
  event: event10,
  attendance_status: "Maybe"
)
p "#{user8.first_name} is attending #{event10.title}"

_attendance7 = Attendance.create!(
  user: user10,
  event: event5,
  attendance_status: "Maybe"
)
p "#{user5.first_name} is attending #{event5.title}"

_attendance8 = Attendance.create!(
  user: user1,
  event: event5,
  attendance_status: "Going"
)
p "#{user1.first_name} is attending #{event5.title}"

_attendance9 = Attendance.create!(
  user: user7,
  event: event5,
  attendance_status: "Maybe"
)
p "#{user7.first_name} is attending #{event5.title}"

_attendance10 = Attendance.create!(
  user: user4,
  event: event5,
  attendance_status: "Going"
)
p "#{user4.first_name} is attending #{event5.title}"

_attendance11 = Attendance.create!(
  user: user3,
  event: event8,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event8.title}"

_attendance12 = Attendance.create!(
  user: user8,
  event: event8,
  attendance_status: "Going"
)
p "#{user8.first_name} is attending #{event8.title}"

_attendance13 = Attendance.create!(
  user: user3,
  event: event8,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event8.title}"

_attendance9 = Attendance.create!(
  user: user5,
  event: event8,
  attendance_status: "Maybe"
)
p "#{user5.first_name} is attending #{event8.title}"

_attendance10 = Attendance.create!(
  user: user4,
  event: event5,
  attendance_status: "Going"
)
p "#{user4.first_name} is attending #{event5.title}"

_attendance11 = Attendance.create!(
  user: user3,
  event: event8,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event8.title}"

_attendance12 = Attendance.create!(
  user: user8,
  event: event8,
  attendance_status: "Going"
)
p "#{user8.first_name} is attending #{event8.title}"

_attendance13 = Attendance.create!(
  user: user9,
  event: event8,
  attendance_status: "Going"
)
p "#{user9.first_name} is attending #{event8.title}"

_attendance14 = Attendance.create!(
  user: user5,
  event: event8,
  attendance_status: "Maybe"
)
p "#{user5.first_name} is attending #{event8.title}"

_attendace15 = Attendance.create!(
  user: user2,
  event: event9,
  attendance_status: "Maybe"
)
p "#{user2.first_name} is attending #{event9.title}"

_attendace16 = Attendance.create!(
  user: user4,
  event: event9,
  attendance_status: "Going"
)
p "#{user4.first_name} is attending #{event9.title}"

_attendace17 = Attendance.create!(
  user: user6,
  event: event9,
  attendance_status: "Going"
)
p "#{user6.first_name} is attending #{event9.title}"

_attendace18 = Attendance.create!(
  user: user8,
  event: event9,
  attendance_status: "Going"
)
p "#{user8.first_name} is attending #{event9.title}"

_attendace19 = Attendance.create!(
  user: user10
  event: event9,
  attendance_status: "Maybe"
)
p "#{user10.first_name} is attending #{event9.title}"

_attendace20 = Attendance.create!(
  user: user1,
  event: event7,
  attendance_status: "Maybe"
)
p "#{user1.first_name} is attending #{event7.title}"

_attendace21 = Attendance.create!(
  user: user3,
  event: event7,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event7.title}"

_attendace22 = Attendance.create!(
  user: user5
  event: event7,
  attendance_status: "Going"
)
p "#{user5.first_name} is attending #{event7.title}"

_attendace23 = Attendance.create!(
  user: user7
  event: event7,
  attendance_status: "Maybe"
)
p "#{user7.first_name} is attending #{event7.title}"

_attendace24 = Attendance.create!(
  user: user9
  event: event7,
  attendance_status: "Maybe"
)
p "#{user9.first_name} is attending #{event7.title}"

_attendace25 = Attendance.create!(
  user: user10
  event: event7,
  attendance_status: "Going"
)
p "#{user10.first_name} is attending #{event7.title}"

_attendace26 = Attendance.create!(
  user: user1
  event: event6,
  attendance_status: "Going"
)
p "#{user1.first_name} is attending #{event6.title}"

_attendace27 = Attendance.create!(
  user: user2
  event: event6,
  attendance_status: "Going"
)
p "#{user2.first_name} is attending #{event6.title}"

_attendace28 = Attendance.create!(
  user: user4
  event: event6,
  attendance_status: "Going"
)
p "#{user4.first_name} is attending #{event6.title}"

_attendace29 = Attendance.create!(
  user: user5
  event: event6,
  attendance_status: "Going"
)
p "#{user5.first_name} is attending #{event6.title}"

_attendace30 = Attendance.create!(
  user: user7
  event: event6,
  attendance_status: "Going"
)
p "#{user7.first_name} is attending #{event6.title}"

_attendace31 = Attendance.create!(
  user: user9
  event: event6,
  attendance_status: "Maybe"
)
p "#{user9.first_name} is attending #{event6.title}"

_attendace32 = Attendance.create!(
  user: user10
  event: event6,
  attendance_status: "Going"
)
p "#{user10.first_name} is attending #{event6.title}"

_attendace33 = Attendance.create!(
  user: user8
  event: event4,
  attendance_status: "Going"
)
p "#{user8.first_name} is attending #{event4.title}"

_attendace34 = Attendance.create!(
  user: user7
  event: event4,
  attendance_status: "Going"
)
p "#{user7.first_name} is attending #{event4.title}"

_attendace35 = Attendance.create!(
  user: user5
  event: event4,
  attendance_status: "Going"
)
p "#{user5.first_name} is attending #{event4.title}"

_attendace36 = Attendance.create!(
  user: user3
  event: event4,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event4.title}"

_attendace37 = Attendance.create!(
  user: user2
  event: event4,
  attendance_status: "Going"
)
p "#{user2.first_name} is attending #{event4.title}"

_attendace38 = Attendance.create!(
  user: user1
  event: event4,
  attendance_status: "Going"
)
p "#{user1.first_name} is attending #{event4.title}"

_attendace39 = Attendance.create!(
  user: user6
  event: event4,
  attendance_status: "Going"
)
p "#{user6.first_name} is attending #{event4.title}"

_attendace40 = Attendance.create!(
  user: user5
  event: event3,
  attendance_status: "Maybe"
)
p "#{user5.first_name} is attending #{event3.title}"

_attendace41 = Attendance.create!(
  user: user7
  event: event3,
  attendance_status: "Going"
)
p "#{user7.first_name} is attending #{event3.title}"

_attendace42 = Attendance.create!(
  user: user9
  event: event3,
  attendance_status: "Going"
)
p "#{user9.first_name} is attending #{event3.title}"

_attendace43 = Attendance.create!(
  user: user10
  event: event3,
  attendance_status: "Going"
)
p "#{user10.first_name} is attending #{event3.title}"

_attendace44 = Attendance.create!(
  user: user2
  event: event3,
  attendance_status: "Maybe"
)
p "#{user2.first_name} is attending #{event3.title}"

_attendace45 = Attendance.create!(
  user: user4
  event: event3,
  attendance_status: "Going"
)
p "#{user4.first_name} is attending #{event3.title}"

_attendace46 = Attendance.create!(
  user: user1
  event: event3,
  attendance_status: "Maybe"
)
p "#{user1.first_name} is attending #{event3.title}"

_attendace47 = Attendance.create!(
  user: user1
  event: event2,
  attendance_status: "Going"
)
p "#{user1.first_name} is attending #{event2.title}"

_attendace48 = Attendance.create!(
  user: user3
  event: event2,
  attendance_status: "Going"
)
p "#{user3.first_name} is attending #{event2.title}"

_attendace49 = Attendance.create!(
  user: user5
  event: event2,
  attendance_status: "Going"
)
p "#{user5.first_name} is attending #{event2.title}"

_attendace50 = Attendance.create!(
  user: user7
  event: event2,
  attendance_status: "Going"
)
p "#{user7.first_name} is attending #{event2.title}"

_attendace51 = Attendance.create!(
  user: user9
  event: event2,
  attendance_status: "Maybe"
)
p "#{user9.first_name} is attending #{event2.title}"

_attendace52 = Attendance.create!(
  user: user10
  event: event2,
  attendance_status: "Maybe"
)
p "#{user10.first_name} is attending #{event2.title}"

_attendace53 = Attendance.create!(
  user: user4
  event: event2,
  attendance_status: "Maybe"
)
p "#{user4.first_name} is attending #{event2.title}"

_attendace54 = Attendance.create!(
  user: user6
  event: event2,
  attendance_status: "Going"
)
p "#{user6.first_name} is attending #{event2.title}"

_attendace55 = Attendance.create!(
  user: user10
  event: event1,
  attendance_status: "Maybe"
)
p "#{user10.first_name} is attending #{event1.title}"

_attendace56 = Attendance.create!(
  user: user9
  event: event1,
  attendance_status: "Going"
)
p "#{user9.first_name} is attending #{event1.title}"

_attendace57 = Attendance.create!(
  user: user8
  event: event1,
  attendance_status: "Going"
)
p "#{user8.first_name} is attending #{event1.title}"

_attendace58 = Attendance.create!(
  user: user6
  event: event1,
  attendance_status: "Going"
)
p "#{user6.first_name} is attending #{event1.title}"

_attendace59 = Attendance.create!(
  user: user4
  event: event1,
  attendance_status: "Going"
)
p "#{user4.first_name} is attending #{event1.title}"

_attendace60 = Attendance.create!(
  user: user2
  event: event1,
  attendance_status: "Going"
)
p "#{user2.first_name} is attending #{event1.title}"

_attendace61 = Attendance.create!(
  user: user1
  event: event1,
  attendance_status: "Going"
)
p "#{user1.first_name} is attending #{event1.title}"

_attendace62 = Attendance.create!(
  user: user2
  event: event1,
  attendance_status: "Going"
)
p "#{user2.first_name} is attending #{event1.title}"