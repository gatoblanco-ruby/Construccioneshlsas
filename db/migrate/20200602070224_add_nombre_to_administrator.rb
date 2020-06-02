class AddNombreToAdministrator < ActiveRecord::Migration[6.0]
  def change
    add_column :administrators, :nombre, :string
  end
end
