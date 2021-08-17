class AddTipToCats < ActiveRecord::Migration[6.1]
  def change
    add_column :cats, :tip, :integer
  end
end
