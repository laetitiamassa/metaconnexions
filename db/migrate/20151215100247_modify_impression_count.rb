class ModifyImpressionCount < ActiveRecord::Migration
  def change
  	change_column :users, :impressions_count, :integer, :default => 0

  	User.reset_column_information
  	User.all.each do |user|
  		user.update_attributes(:impressions_count => user.impressions.length)	
  	end
  end

end
