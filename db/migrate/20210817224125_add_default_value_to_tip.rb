class AddDefaultValueToTip < ActiveRecord::Migration[6.1]
  def change
    change_column :cats, :tip, :integer, :default => 20
  end
end
