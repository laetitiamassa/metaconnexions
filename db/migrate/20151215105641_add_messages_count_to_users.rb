class AddMessagesCountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :messages_count, :integer, :default => 0

    User.reset_column_information
  	User.all.each do |user|
  		user.update_attributes(:messages_count => user.messages.length)	
  	end
  end
end
