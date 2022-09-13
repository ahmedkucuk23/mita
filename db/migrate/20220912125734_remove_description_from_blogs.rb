class RemoveDescriptionFromBlogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :blogs, :description, :text
  end
end
