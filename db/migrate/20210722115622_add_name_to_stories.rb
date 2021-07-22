class AddNameToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :name, :string
  end
end
