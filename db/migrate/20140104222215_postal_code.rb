class PostalCode < ActiveRecord::Migration
  def up
    remove_column :buildings, :postal_code
    add_column :buildings, :postal_code, :string
  end

  def down
    remove_column :buildings, :postal_code
    add_column :buildings, :postal_code, :integer
  end
end
