class CommunityTag < ApplicationRecord
	belongs_to	:tag
	belongs_to	:community
	validates	:community_id, uniqueness:{scope: :tag_id}
end
