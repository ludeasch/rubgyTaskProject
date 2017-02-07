require 'test_helper'

class SimpletaskControllerTest < ActionDispatch::IntegrationTest
  test "crear una tarea sin ningun parametro" do
    Listask.create(nombre: "ver")
    post url_for controller: "simpletask", action: "createsimple", task: "ver",params:{simpletask:{descripcion:"", estado:"", prioridad: "" }}
    assert Simpletask.count.zero?
  end

  test "crear una tarea con parametros" do
    Listask.create(nombre: "ver")
    post url_for controller: "simpletask", action: "createsimple", task: "ver", params:{"simpletask"=>{"descripcion"=>"prueba", "estado"=> "2","prioridad"=>"2"}}
    assert Simpletask.count == 1
  end

  test "tarea con rango de fechas invertido" do
    Listask.create(nombre: "ver")
    post url_for controller: "simpletask", action: "createmp", task: "ver", params: {"temporaltask"=>{"descripcion"=>"prueba", "estado"=> "2","prioridad"=>"2" },"start_date"=>{"year"=>"2017", "month"=>"6", "day"=>"7"}, "end_date"=>{"year"=>"2017", "month"=>"2", "day"=>"7"}}
    assert Temporaltask.count.zero?
  end

   test "crear una tarea larga con porcentaje incorrecto" do
    Listask.create(nombre: "ver")
    post url_for controller: "simpletask", action: "createlong", task: "ver", params: {"longtask"=>{"descripcion"=>"prueba", "estado"=> "2","prioridad"=>"2","progreso"=>1000 }}
    assert Longtask.count.zero?
  end

  test "crear una tarea larga con porcentaje correcto" do
    Listask.create(nombre: "ver")
    post url_for controller: "simpletask", action: "createlong", task: "ver", params: {"longtask"=>{"descripcion"=>"prueba", "estado"=> "2","prioridad"=>"2" ,"progreso"=>50}}
    assert Longtask.count == 1
  end
  
 
end
