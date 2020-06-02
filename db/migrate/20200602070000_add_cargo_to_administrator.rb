class AddCargoToAdministrator < ActiveRecord::Migration[6.0]
  def change
    add_column :administrators, :cargo, :string
  end
end
