class ListaskController < ApplicationController
    def home
        @lists = Listask.last(5)
    end

	def new
	end

	def create
		@list = Listask.new()
		@list.nombre = params[:listask]['nombre']
		if @list.save
			redirect_to controller: "listask", action: "details", slug: @list.slug
		else
			flash[:error] = @list.errors
			redirect_to controller: "listask", action: "home"
		end

	end
	def update
		 @listd = Listask.where("slug = ? ", params['slug'])[0]
         @listd.nombre = params['listask']["nombre"]
         @listd.save
         redirect_to controller: "listask", action: "details", slug: @listd.slug  

           
    end

	def details
       @listd = Listask.where("slug = ? ", params['slug'])[0]
       @listd.simpletask.where("tasktype = ? ", "TempTask").each do |temp|
       	    if temp.fecha_fin < Date.today and temp.estado != "exirado"
		      temp.estado = "3"
		      temp.save
              end
		      	 	    
       	end

	end


end
