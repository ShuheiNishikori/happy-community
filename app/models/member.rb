class Member < ApplicationRecord
	belongs_to :community
	belongs_to :user
	
	def self.participate(set_user_id, set_community_id)
		create(community_id: set_community_id, user_id: set_user_id)
	end
end
