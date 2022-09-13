class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.datetime :published_at

      t.timestamps
    end
  end
end
