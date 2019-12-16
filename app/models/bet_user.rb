class BetUser < ApplicationRecord
  has_one :bet
  belongs_to :user, dependent: :destroy
  has_many :friends, through: :friendships
end
