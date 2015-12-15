class Interest < ActiveRecord::Base
	belongs_to :user
	belongs_to :interest_name

	scope :by_heart, lambda {where(:how => "Par le coeur")}
	scope :by_acts, lambda {where(:how => "Par l'action")}

	def name
		self.interest_name.name
	end
end
