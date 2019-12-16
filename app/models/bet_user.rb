class Bet < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :friends, through: :friendships
end
