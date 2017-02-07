class SimpletaskController < ApplicationController
  def createsimple
     @list = Listask.where("slug = ? ", params['task'])[0]
     @dd = Simpletask.new()
     @dd.tasktype = "SimpleTask"
     @dd.descripcion = params[:simpletask][:descripcion]
     @dd.prioridad = params[:simpletask][:prioridad]
     @dd.estado = params[:simpletask][:estado]
     @dd.listask_id = @list.id
     @dd.save()
     flash[:error] = @dd.errors
     redirect_to controller: "listask", action: "details", slug: @list.slug
end

def createlong
     @list = Listask.where("slug = ? ", params['task'])[0]
     @l = Longtask.new()
     @l.tasktype = "LongTask"
     @l.descripcion = params[:longtask][:descripcion]
     @l.prioridad = params[:longtask][:prioridad]
     @l.porcentaje = params[:longtask][:progreso]
     @l.estado = params[:longtask][:estado]
     @l.listask_id = @list.id
     puts "miraaaa"
     puts @l.porcentaje
     @l.save()  
     flash[:error] = @l.errors
      redirect_to controller: "listask", action: "details", slug: @list.slug  
  end

def createmp
     puts params
     @list = Listask.where("slug = ? ", params['task'])[0]
     @dd = Temporaltask.new()
     @dd.tasktype = "TempTask"
      @dd.descripcion = params[:temporaltask][:descripcion]
     @dd.prioridad = params[:temporaltask][:prioridad]
     @dd.estado = params[:temporaltask][:estado]
     @dd.fecha_inicio =  Date.new(params[:start_date]["year"].to_i,params['start_date']["month"].to_i,params['start_date']["day"].to_i)
     @dd.fecha_fin =  Date.new(params[:end_date]["year"].to_i,params['end_date']["month"].to_i,params['end_date']["day"].to_i)
     @dd.listask_id = @list.id
     @dd.save() 
     flash[:error] = @dd.errors
     redirect_to controller: "listask", action: "details", slug: @list.slug 
  end

def updatetemp
     @dd = Temporaltask.where("id = ? ", params['task'])[0]
     @dd.descripcion = params[:temporaltask][:descripcion]
     @dd.prioridad = params[:temporaltask][:prioridad]
     @dd.estado = params[:temporaltask][:estado]
     @dd.fecha_inicio =  Date.new(params[:start_date]["year"].to_i,params['start_date']["month"].to_i,params['start_date']["day"].to_i)
     @dd.fecha_fin =  Date.new(params[:end_date]["year"].to_i,params['end_date']["month"].to_i,params['end_date']["day"].to_i)
     @dd.save() 
     flash[:error] = @dd.errors
     redirect_to controller: "listask", action: "details", slug: Listask.where("id = ? ", @dd.listask_id)[0].slug     
  end

def updatelong
     @dd = Longtask.where("id = ? ", params['task'])[0]
     @dd.descripcion = params[:longtask][:descripcion]
     @dd.prioridad = params[:longtask][:prioridad]
     @dd.porcentaje = params[:longtask][:progreso]
     @dd.estado = params[:longtask][:estado]
     @dd.save()  
     flash[:error] = @dd.errors 
     redirect_to controller: "listask", action: "details", slug: Listask.where("id = ? ", @dd.listask_id)[0].slug
  end

def updatesimple
     @dd = Simpletask.where("id = ? ", params['task'])[0]
     @dd.descripcion = params[:simpletask][:descripcion]
     @dd.prioridad = params[:simpletask][:prioridad]
     @dd.estado = params[:simpletask][:estado]
     @dd.save()
     flash[:error] = @dd.errors
     redirect_to controller: "listask", action: "details", slug: Listask.where("id = ? ", @dd.listask_id)[0].slug   
  end

end
