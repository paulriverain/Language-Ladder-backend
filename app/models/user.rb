class User < ApplicationRecord
  has_secure_password

  has_many :phrases
  has_many :languages, through: :phrases


  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true

  validates :password, presence: true

  # validate :current_user_update, on: :update
  #
  # def current_user_update
  #   if ()
  #   errors.add(:current_user, "is not active") unless customer.active?
  # end



end
