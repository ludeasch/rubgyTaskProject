# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
list = Listask.create({
    nombre: 'Lista 0',
})

Simpletask.create({
    prioridad: "2",
    tasktype:"SimpleTask",
    estado: "2",
    descripcion: "Tarea de prueba",
    listask_id: list.id
})

Simpletask.create({
    prioridad: "2",
    tasktype:"SimpleTask",
    estado: "1",
    descripcion: "Tarea prueba segunda",
    listask_id: list.id
})

Temporaltask.create({
    prioridad: "2",
    tasktype:"TempTask",
    estado: "2",
    descripcion: "Tarea temporal",
    fecha_inicio: Date.today - 1,
    fecha_fin: Date.today + 10,
    listask_id: list.id    
})

Temporaltask.create({
    prioridad: "2",
    tasktype:"TempTask",
    estado: "3",
    descripcion: "Tarea expirada",
    fecha_inicio: Date.today - 10,
    fecha_fin: Date.today - 2,
    listask_id: list.id    
})

Longtask.create!({
    prioridad: "1",
    estado: "2",
    tasktype:"LongTask",
    descripcion: "tarea sin hacer",
    porcentaje: 10,
    listask_id: list.id    
})

Longtask.create!({
    prioridad: "1",
    estado: "2",
    tasktype:"LongTask",
    descripcion: "tarea a medio hacer",
    porcentaje: 60,
    listask_id: list.id    
})

