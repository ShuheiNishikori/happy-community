class Community < ApplicationRecord
	has_many :events
	has_many :members
	has_many :c_tags
end
