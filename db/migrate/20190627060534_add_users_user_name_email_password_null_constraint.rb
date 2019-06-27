class AddUsersUserNameEmailPasswordNullConstraint < ActiveRecord::Migration[5.2]
  def up
  	change_column_null :users, :user_name, false
  	change_column_null :users, :email, false
  	change_column_null :users, :password, false
  end

  def down
  	change_column_null :users, :user_name, true
  	change_column_null :users, :email, true
  	change_column_null :users, :password, true
  end
end
