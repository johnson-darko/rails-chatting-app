class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates_uniqueness_of :username
  scope :all_except, ->(user) { where.not(id: user) }
  has_many :chatrooms
end
