class AddCreatedByUserToTests < ActiveRecord::Migration[5.2]
  def change
  	add_column :tests, :created_by_user, :integer, null: false, default: 0
  end
end
