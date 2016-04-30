class CatsInfosController < ApplicationController
	#http_basic_authenticate_with name: "qvantel", password: "qvantelpassword", except: [:index, :show]
	def new
		@cats_info = CatDb.new
	end

	def edit
		@cats_info = CatDb.find(params[:id])
	end	

	def create
		@cats_info = CatDb.new(cats_params)
		if @cats_info.save
			@cats_infos = CatDb.all
			render :index
		else
			render :new
		end
	end

	def update
		@cats_info = CatDb.find(params[:id])
		if @cats_info.update(cats_params)
			redirect_to :action => 'show'
		else
			render :edit
		end
	end
	def index
		@cats_infos = CatDb.all
	end
	def show
		@cats_infos = CatDb.find(params[:id])
	end
	def destroy
		@cats_info = CatDb.find(params[:id])
		@cats_info.delete
		redirect_to cats_infos_path
	end
	
	private
  		def cats_params
  			params.require(:cats_info).permit(:name, :color, :picture, :race, :gender, :details)
  		end
end
