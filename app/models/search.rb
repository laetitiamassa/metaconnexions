class Search < ActiveRecord::Base
	def search_skills
   
	   skills = Skill.all
	   
	   skills = skills.where("name like ?", "%#{keywords}%") if keywords.present?
	   #books = books.where("category like ?", category) if category.present?
	   
	   return skills
	end
end
