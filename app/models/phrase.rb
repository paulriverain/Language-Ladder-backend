class Phrase < ApplicationRecord
  belongs_to :user
  belongs_to :language


# validates :language_id, presence: true, uniqueness: true
# validates :user_message, presence: true, uniqueness: true
# validates :user_id, presence: true, uniqueness: true

# validates :orMess, presence: true
# validates :currentLang, presence: true
# validates :text, presence: true
# validates :target, presence: true


end
