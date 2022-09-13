class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
<<<<<<< HEAD
      t.text :body
=======
      t.text :description
>>>>>>> ae76c3ba17f899b7f58246484ec22dd14fd3563e
      t.boolean :published
      t.datetime :published_at

      t.timestamps
    end
  end
end
