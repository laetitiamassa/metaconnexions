class Message < ActiveRecord::Base
	belongs_to :messagee, :class_name => 'User', :foreign_key => 'messagee_id', counter_cache: true
	
end
