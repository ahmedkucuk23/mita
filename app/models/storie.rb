class Storie < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    [
      "created_at",
      "description",
      "fifth_number",
      "fifth_number_text",
      "first_description",
      "first_header",
      "first_number",
      "first_number_text",
      "fourth_description",
      "fourth_header",
      "fourth_number",
      "fourth_number_text",
      "id",
      "link",
      "name",
      "second_description",
      "second_header",
      "second_number",
      "second_number_text",
      "six_number",
      "six_number_text",
      "slug",
      "third_description",
      "third_header",
      "third_number",
      "third_number_text",
      "updated_at",
      "user_id"
    ]
  end

  extend FriendlyId
  friendly_id :name, use: :slugged
  belongs_to :user
  has_many_attached :photos

end
