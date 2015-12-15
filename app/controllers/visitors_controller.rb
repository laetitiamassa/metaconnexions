class VisitorsController < ApplicationController
	def home
		@search = Search.new
		@skills = Skill.search(params[:search])
	end

	def dashboard
		@most_consulted = User.order('impressions_count DESC').take(3)
		@most_contacted = User.order('messages_count DESC').take(3)

		@users = User.all
		@messages = Message.all 
		@searches = Search.all
		@impressions = Impression.all 
	end
end
