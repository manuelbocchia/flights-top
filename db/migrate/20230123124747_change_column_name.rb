class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    change_table :airports do |t|
      t.rename :stateCode, :location
      t.index :code
    end
  end
end
