require 'test_helper'

class ListaskControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "crear un lista sin nombre" do
    post url_for controller: "listask", action: "create" ,params: {"listask"=>{"nombre"=>""}}
    assert Listask.count.zero?
  end

  test "crear un lista con nombre" do
    post url_for controller: "listask", action: "create" ,  params: {"listask"=>{"nombre"=>"nombre uno"}}
    assert Listask.count == 1
  end

  test "crear dos listas con el mismo nombre" do
    post url_for controller: "listask", action: "create",  params: {"listask"=>{"nombre"=>"nombre uno"}}
    assert Listask.count == 1
    post url_for controller: "listask", action: "create",  params: {"listask"=>{"nombre"=>"nombre uno"}}
    assert Listask.count == 2    
  end


   test "tarea expirada" do
    Listask.create(nombre: "ver")
    Temporaltask.create({
      prioridad: 4,
      tasktype:"TempTask",
      estado: "2",
      descripcion: "Temporal task that is expired but didn't change yet",
      fecha_inicio: Date.today - 10,
      fecha_fin: Date.today - 2,
      listask_id: Listask.first.id    
    })

    assert Temporaltask.first.estado == "2"
    get url_for controller: "listask", action: "details", slug: "ver"
    assert_response :success
    assert Temporaltask.first.estado == "3"
  end
end
