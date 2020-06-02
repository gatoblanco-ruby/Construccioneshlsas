class AddCedulaToAdministrator < ActiveRecord::Migration[6.0]
  def change
    add_column :administrators, :cedula, :integer
  end
end
