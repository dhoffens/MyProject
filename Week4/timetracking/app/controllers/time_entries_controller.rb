class TimeEntriesController < ApplicationController

	def index
	# Input 
	# - project id under params[:id]
	# Output
	# - all entries for the project
	
	@project = Project.find(params[:project_id])
	@time_entries = @project.time_entries.where(created_at: (Time.now.beginning_of_month..Time.now.end_of_month))
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
	time_entry = project.time_entries.new(
		minutes: params[:time_entry][:minutes],
		hours: params[:time_entry][:hours],
		date: params[:time_entry][:date])
	time_entry.save

	redirect_to("/projects/#{project.id}/time_entries")
	end
end
