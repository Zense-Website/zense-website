class ProjectsController < ApplicationController

	def index
		@projects = Project.all.order('created_at DESC')
	end

	def new 
		@project = Project.new
	end

	def create
		@project = Project.new(project_params)

		if @project.save
			redirect_to projects_path
		end

	end

	private
	def project_params
		params.require(:project).permit(:title, :body, :image)
	end
end
