class AddFellowIdToPayrolls < ActiveRecord::Migration[6.0]
  def change
    add_reference :payrolls, :fellow,  foreign_key: true
  end
end
