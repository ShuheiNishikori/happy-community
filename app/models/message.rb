class Message < ApplicationRecord
	#after_create_commit { BroadCastMessageJob.perform_later self }
	#なんかエラーになるけどおそらくチャット機能作るときに入れるべきものが入ってないからだと思う
	#動かすときはコメント外して実行してみて
	belongs_to :user
	belongs_to :room
end
