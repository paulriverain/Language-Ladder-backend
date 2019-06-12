class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio


  has_many :phrases
  has_many :languages, through: :phrases

end
