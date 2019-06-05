class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :message, :password


  has_many :phrases
  has_many :languages, through: :phrases

end
