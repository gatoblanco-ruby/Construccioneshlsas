class AddNombreToFellows < ActiveRecord::Migration[6.0]
  def change
    add_column :fellows, :nombre, :string
  end
end
