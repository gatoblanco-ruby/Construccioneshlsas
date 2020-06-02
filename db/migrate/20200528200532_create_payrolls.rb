class CreatePayrolls < ActiveRecord::Migration[6.0]
  def change
    create_table :payrolls do |t|
      t.string :descripcion
      t.integer :hora

      t.timestamps
    end
  end
end
