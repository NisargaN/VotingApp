class VoteOption < ApplicationRecord
  validates :title, presence: true
  belongs_to :poll, inverse_of: :vote_options
  has_many :votes, dependent: :destroy, inverse_of: :vote_option
  has_many :users, through: :votes, inverse_of: :vote_option
end
