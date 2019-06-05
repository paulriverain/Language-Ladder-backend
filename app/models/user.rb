class User < ApplicationRecord
  has_many :phrases
  has_many :languages, through: :phrases
end
