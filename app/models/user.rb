class User < ApplicationRecord
	mount_uploader	:picture, PictureUploader
	has_many 		:skills
	has_many 		:members
	has_many 		:event_members
	has_many 		:messages

	has_secure_password
	validates	:password, presence: true, length: {minimum:6}
	validates 		:name, 	presence: true,	length: {maximum: 50}
<<<<<<< HEAD
	validates		:email, presence: true,	length: {maximum: 255}, uniqueness: { case_sensitive: false }
end
=======
	validates		:email, presence: true,	length: {maximum: 255}
	
	def User.digest(string)
		cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engin.cost
		BCrypt::Password.create(string, cost: cost)
	end

end
>>>>>>> 5155cbb2c050f0bb63751de5aae45e463b27a3f1
