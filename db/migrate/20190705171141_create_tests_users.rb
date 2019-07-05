class CreateTestsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tests_users do |t|
      t.references :user
      t.references :test
    end
  end
end
