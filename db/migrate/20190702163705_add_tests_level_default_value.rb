class AddTestsLevelDefaultValue < ActiveRecord::Migration[5.2]
  def change
  	change_column_default(:tests, :level, 'beginner')
  end
end
