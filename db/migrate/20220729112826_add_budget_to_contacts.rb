class AddBudgetToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :budget, :string
  end
end
