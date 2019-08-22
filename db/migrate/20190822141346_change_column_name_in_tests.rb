class ChangeColumnNameInTests < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tests, :created_by_user, :author_id
  end
end
