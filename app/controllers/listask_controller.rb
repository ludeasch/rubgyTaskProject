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
		redirect_to controller: "listask", action: "home"
		
	end


end
