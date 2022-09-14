class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  has_rich_text :body
  has_many_attached :photos

end
