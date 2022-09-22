class AddFirstAndLastNameToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :first_name, :string, null: false, default: ""
    add_column :authors, :last_name, :string, null: false, default: ""
  end
end
