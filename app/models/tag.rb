class Tag < ApplicationRecord
	has_many :community_tags
	validates :name, uniqueness: true
end
