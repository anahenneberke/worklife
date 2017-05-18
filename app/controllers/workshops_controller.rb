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

	private
	def workshop_params
		params.require(:workshop).permit(:title, :description)
	end

end