class AddNullFalseToPostalCode < ActiveRecord::Migration
  def change
    change_column :buildings, :postal_code, :string, null: false
  end
end
