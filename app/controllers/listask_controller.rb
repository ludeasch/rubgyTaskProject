class ListaskController < ApplicationController
    def home
        @lists = Listask.last(5)
    end

	def new
	end

	def create
		@list = Listask.new()
		@list.nombre = params[:listask]['nombre']
		@list.save
		redirect_to controller: "listask", action: "details", slug: @list.slug
		
	end

	def details
       @listd = Listask.where("slug = ? ", params['slug'])[0]
       puts @listd.inspect
	end


end
