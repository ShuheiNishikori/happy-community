class Message < ApplicationRecord
	#after_create_commit { BroadCastMessageJob.perform_later self }
	#なんかエラーになるけどおそらくチャット機能作るときに入れるべきものが入ってないからだと思う
	#動かすときはコメント外して実行してみて
	
	belongs_to :user
	validates :user_id, presence: true
	#belongs_to :room
  def user_name_set
      return 'としあき' if user_id.blank?
      user.name
  end
end
