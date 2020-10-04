class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :identifiacion, :integer
    add_column :users, :nombres, :string
    add_column :users, :apellidos, :string
    add_column :users, :telefono, :integer
    add_column :users, :direccion, :string
  end
end
