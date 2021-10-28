class Room < ApplicationRecord
  has_many :room_users
  has_maney :users, through: :room_users
end
