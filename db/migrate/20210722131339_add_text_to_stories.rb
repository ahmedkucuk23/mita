class AddTextToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :first_header, :string
    add_column :stories, :first_description, :string
    add_column :stories, :second_header, :string
    add_column :stories, :second_description, :string
    add_column :stories, :first_number, :string
    add_column :stories, :first_number_text, :string
    add_column :stories, :second_number, :string
    add_column :stories, :second_number_text, :string
    add_column :stories, :third_number, :string
    add_column :stories, :third_number_text, :string
    add_column :stories, :fourth_number, :string
    add_column :stories, :fourth_number_text, :string
    add_column :stories, :fifth_number, :string
    add_column :stories, :fifth_number_text, :string
    add_column :stories, :six_number, :string
    add_column :stories, :six_number_text, :string
    add_column :stories, :third_header, :string
    add_column :stories, :third_description, :string
    add_column :stories, :fourth_header, :string
    add_column :stories, :fourth_description, :string
  end
end
