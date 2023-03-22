class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.string :email
      t.string :number

      t.timestamps
    end
  end
end
