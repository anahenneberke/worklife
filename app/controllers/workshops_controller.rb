class WorkshopsController < ApplicationController

	def new
		@workshop = Workshop.new
	end

	def create
		@workshop = Workshop.new(workshop_params)
		if @workshop.save
			flash[:notice] = "Workshop created successfully."
			redirect_to workshop_path(@workshop)
		else
			render 'new'	
		end		
	end

	def show
		@workshop = Workshop.find(params[:id])
	end

	def edit
		@workshop = Workshop.find(params[:id])
	end

	def update
		@workshop = Workshop.find(params[:id])
		if @workshop.update(workshop_params)
			flash[:notice] = "Workshop updated successfully."
			redirect_to workshop_path(@workshop)
		else
			render 'edit'
		end
	end

	def index
		@workshops = Workshop.all
	end

	private
	def workshop_params
		params.require(:workshop).permit(:title, :description)
	end

end