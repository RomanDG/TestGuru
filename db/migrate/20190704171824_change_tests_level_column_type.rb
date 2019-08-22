class ChangeTestsLevelColumnType < ActiveRecord::Migration[5.2]
  def change
    change_column :tests, :level, :integer
  end
end

# проблемма отступов решена