class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :lang_name, :lang_code

  # has_many :phrases
  # has_many :users, through: :phrases

end
