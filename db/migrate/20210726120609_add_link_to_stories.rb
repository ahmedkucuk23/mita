class AddLinkToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :link, :string
  end
end
