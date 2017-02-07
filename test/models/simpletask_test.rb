require 'test_helper'

class SimpletaskTest < ActiveSupport::TestCase
  test "diferente prioridad" do
    Listask.create(nombre: "ver")
    tl = Listask.first
   
    Simpletask.create!({tasktype:"SimpleTask", prioridad: 6, estado: "2", descripcion: ".", listask_id: tl.id })
    Temporaltask.create!({ tasktype:"TempTask",prioridad: 4, estado: "2", descripcion: ".", fecha_inicio: Date.today - 1, fecha_fin: Date.today + 10, listask_id: tl.id })
    Longtask.create!({ tasktype:"LongTask",prioridad: 1, descripcion: ".", porcentaje: 60, listask_id: tl.id , estado: "1"})
    Simpletask.create!({ tasktype:"SimpleTask",prioridad: 5, estado: "1", descripcion: ".", listask_id: tl.id })
    Temporaltask.create!({ tasktype:"TempTask",prioridad: 3, estado: "3", descripcion: ".", fecha_inicio: Date.today - 10, fecha_fin: Date.today - 2, listask_id: tl.id })
    Longtask.create!({ tasktype:"LongTask",prioridad: 0, descripcion: ".", porcentaje: 100, listask_id: tl.id, estado: "1"})
    Longtask.create!({ tasktype:"LongTask",prioridad: 2, descripcion: ".", porcentaje: 10, listask_id: tl.id , estado: "1"})

    
    priorities = Simpletask.all.collect { |x| x.prioridad.to_i }
    assert priorities == [6,4,1,5,3,0,2]

    priorities = Simpletask.all.order("prioridad").collect { |x| x.prioridad.to_i }
    puts priorities
    assert priorities == (0..6).to_a
  end
end