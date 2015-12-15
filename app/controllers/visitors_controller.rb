class VisitorsController < ApplicationController
	def home
		@search = Search.new
		@skills = Skill.search(params[:search])
	end

	def dashboard
		@users = User.all
		@messages = Message.all 
		@searches = Search.all
		@impressions = Impression.all 
	end
end
