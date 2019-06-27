class AddAnswersBodyCorrectNullConstraint < ActiveRecord::Migration[5.2]
  def up
  	change_column_null :answers, :body, false
  	change_column_null :answers, :correct, false
  end

  def down
  	change_column_null :answers, :body, true
  	change_column_null :answers, :correct, true
  end
end
