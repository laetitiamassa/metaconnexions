class SearchesController < ApplicationController
	layout "special", :only => :show
	before_action :authenticate_user!, :only => [:index]

	def index
		@searches = Search.order('created_at DESC')
	end

	def new
	  @search = Search.new
	  #@categories = Book.uniq.pluck(:category)
	end

	def create
	  @search = Search.create(search_params)
	  redirect_to @search
	end

	def show
	  @search = Search.find(params[:id])
	end

	private	
	def search_params
	   params.require(:search).permit(:keywords)
	end
end
