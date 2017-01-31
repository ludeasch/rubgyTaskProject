class ListaskController < ApplicationController
    def home
        @lists = Listask.all
    end

	def new
	end

	def create
		@list = Listask.new()
		@list.url = params[:listask]['title']
		@list.nombre = params[:listask]['nombre']
		@list.save
		redirect_to controller: "listask", action: "home"
		
	end

	private
  	def article_params
    	params.require(:listask).permit(:nombre, :title)
  	end


end
