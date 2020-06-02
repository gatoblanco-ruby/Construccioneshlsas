class AddCedulaToFellows < ActiveRecord::Migration[6.0]
  def change
    add_column :fellows, :cedula, :integer
  end
end
