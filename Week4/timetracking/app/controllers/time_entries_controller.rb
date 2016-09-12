class TimeEntriesController < ApplicationController

	def index
	# Input 
	# - project id under params[:id]
	# Output
	# - all entries for the project
	
	@project = Project.find(params[:project_id])
	@time_entries = @project.time_entries
	end

	def new
	# Input
	# - params[:project_id]
	# Output
	# 1. Find the Project
	# 2. Instantiate new time entry for the project
	@project = Project.find(params[:project_id])
	@time_entry = @project.time_entries.new
	end

	def create
	# Input
	# - params[:project_id]
	# - params[:time_entry]
	# 1. Find the project
	# 2. Instantiate the new time entry with time_entry params
	# 3. save the time entry
	# 4. redirect back to project's time entries
	project = Project.find(params[:project_id])
	time_entry = project.time_entries.new(time_entry_params)
		if time_entry.save
			flash[:notice] = "Project created successfully"
			redirect_to("/projects/#{project.id}/time_entries")
		else
			render 'new'
		end
	end

	def edit
	# Input
	# - params[:project_id]
	# - params[:id]
	# Output
	# - the edit form
	@project = Project.find(params[:project_id])
	@time_entry = @project.time_entries.find(params[:id])
	end

	def update
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find(params[:id])
		time_entry.update(time_entry_params)

		redirect_to "/projects/#{project.id}/time_entries"
	end



	private

	def time_entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date)
	end
end
