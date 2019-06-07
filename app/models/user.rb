class User < ApplicationRecord
  has_secure_password

  has_many :phrases
  has_many :languages, through: :phrases


  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true


end
