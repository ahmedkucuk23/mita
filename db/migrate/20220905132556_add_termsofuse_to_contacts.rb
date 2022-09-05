class AddTermsofuseToContacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :termsofuse, :string
  end
end
