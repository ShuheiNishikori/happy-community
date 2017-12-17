class User < ApplicationRecord
	mount_uploader	:picture, PictureUploader
	has_many 		:skills
	has_many 		:members
	has_many 		:event_members
	has_many 		:messages
	has_many		:chat_messages

	has_secure_password
	validates	:password, presence: true, length: {minimum:6}
	validates 		:name, 	presence: true,	length: {maximum: 50}

	validates		:email, presence: true,	length: {maximum: 255}
	
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engin.cost
		BCrypt::Password.create(string, cost: cost)
	end

end
