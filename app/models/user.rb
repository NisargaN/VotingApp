class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :votes, dependent: :destroy, inverse_of: :user
has_many :vote_options, through: :votes, inverse_of: :user


# class << self
#     def from_omniauth(auth)
#       uid = auth.uid
#       info = auth.info.symbolize_keys!
#       user = User.find_or_initialize_by(uid: uid)
#       user.name = info.name
#       user.image_url = info.image
#       user.save!
#       user
#     end
# end

  def voted_for?(poll)
    votes.any? {|v| v.vote_option.poll == poll}
  end
end
