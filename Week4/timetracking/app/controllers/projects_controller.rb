class ProjectsController < ApplicationController
	def index
		#show projects in descending order, only last ten
		@projects = Project.order(created_at: :desc).limit(10)
	end

	def show
		#display a single project from an id
		@project = Project.find_by(id: params[:id])

		unless @project
			render "no_projects_found"
		end
	end

	def new
		#display form page for new project
		@new_project = Project.new
	end

	def create
		#create a new project from params passed in form
		new_project = Project.new(
			name: params[:project][:name],
			description: params[:project][:description]
			)
		new_project.save

		redirect_to "/projects/#{new_project.id}"
	end
end