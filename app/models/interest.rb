class Interest < ActiveRecord::Base
	belongs_to :user
	belongs_to :interest_name

	def name
		self.interest_name.name
	end
end
