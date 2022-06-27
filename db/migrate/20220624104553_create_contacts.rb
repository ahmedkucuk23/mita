class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :business
      t.string :surname
      t.string :email
      t.string :website
      t.string :message

      t.timestamps
    end
  end
end
