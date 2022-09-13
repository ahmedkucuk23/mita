class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
<<<<<<< HEAD
  has_rich_text :body

=======
>>>>>>> ae76c3ba17f899b7f58246484ec22dd14fd3563e

end
