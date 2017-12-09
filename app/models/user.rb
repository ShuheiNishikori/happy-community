class User < ApplicationRecord
	mount_uploader	:picture, PictureUploader
	has_many 		:skills
	has_many 		:members
	has_many 		:event_members
	has_many 		:messages

	validates 		:name, 	presence: true,	length: {maximum: 50}
	validates		:email, presence: true,	length: {maximum: 255}
end
