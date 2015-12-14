class Skill < ActiveRecord::Base
	belongs_to :user
	belongs_to :skill_name



	scope :certified, lambda {where(:how => "Instruction")}
	scope :practical, lambda {where(:how => "Pratique")}

	def name
		self.skill_name.name
	end

	def self.search(search)
	  if search
	    where(['name LIKE ?', "%#{search}%"])
	  else
	    all
	  end
	end
end
