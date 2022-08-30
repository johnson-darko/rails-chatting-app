class Chatroom < ApplicationRecord
	validates_uniqueness_of :name
  scope :public_rooms, -> { where(is_private: false) }
  belongs_to :user
end
