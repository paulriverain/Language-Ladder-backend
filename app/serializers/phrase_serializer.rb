class PhraseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :language_id, :user_message, :new_message

  belongs_to :user
  belongs_to :language
end
