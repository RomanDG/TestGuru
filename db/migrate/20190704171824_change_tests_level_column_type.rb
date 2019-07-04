class ChangeTestsLevelColumnType < ActiveRecord::Migration[5.2]
  def change
  	remove_column :tests, :level
    add_column :tests, :level, :integer, default: 0
  end
end
