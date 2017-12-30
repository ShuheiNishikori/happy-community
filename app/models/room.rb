class Room < ApplicationRecord
	has_many    :chat_messages
	belongs_to	:community
end
