class Community < ApplicationRecord
	has_many :events
	has_many :members
	has_many :community_tags
	
	validates	:name, uniqueness: true
	
end
