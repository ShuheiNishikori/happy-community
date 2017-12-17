class Community < ApplicationRecord
	has_many :events
	has_many :members
	has_many :community_tags

	has_many :tags, through: :community_tags
	accepts_nested_attributes_for :tags

	
	validates	:name, uniqueness: true
	

end
