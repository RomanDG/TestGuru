# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ------------------------------------------------------------------------------------------

# Category.delete_all
# User.delete_all
# Test.delete_all
# Question.delete_all
# Answer.delete_all

# ------------------------------------------------------------------------------------------

# Category.create(title: 'Frontend')
# Category.create(title: 'Backend')
# Category.create(title: 'Mobile Development')

# User.create(user_name: 'Mike', email: 'mike1@yahoo.com', password: '12345')
# User.create(user_name: 'Dave', email: 'dave1@yahoo.com', password: '54321')
# User.create(user_name: 'John', email: 'john1@yahoo.com', password: '12312')

# Test.create(title: 'Ruby', level: 2, category_id: 2)
# Test.create(title: 'Html', level: 0, category_id: 1)
# Test.create(title: 'Kotlin', level: 3, category_id: 3)
# Test.create(title: 'Elixir', level: 2, category_id: 2)
# Test.create(title: 'JS', level: 0, category_id: 1)
# Test.create(title: 'Flutter', level: 3, category_id: 3)

# Question.create(title: 'Any question about Html - 1', body: 'The body of question about Html - 1', test_id: 1)
# Question.create(title: 'Any question about Ruby - 1', body: 'The body of question about Ruby - 1', test_id: 2)
# Question.create(title: 'Any question about Kotlin - 1', body: 'The body of question about Kotlin - 1', test_id: 3)
# Question.create(title: 'Any question about Html - 2', body: 'The body of question about Html - 2', test_id: 1)
# Question.create(title: 'Any question about Ruby - 2', body: 'The body of question about Ruby - 2', test_id: 2)
# Question.create(title: 'Any question about Kotlin - 2', body: 'The body of question about Kotlin - 2', test_id: 3)
# Question.create(title: 'Any question about Html - 3', body: 'The body of question about Html - 3', test_id: 1)
# Question.create(title: 'Any question about Ruby - 3', body: 'The body of question about Ruby - 3', test_id: 2)
# Question.create(title: 'Any question about Kotlin - 3', body: 'The body of question about Kotlin - 3', test_id: 3)

# Answer.create(body: 'The answer to this question about Html - 1', correct: true, question_id: 1)
# Answer.create(body: 'The answer to this question about Ruby - 1', correct: true, question_id: 2)
# Answer.create(body: 'The answer to this question about Kotlin - 1', correct: false, question_id: 3)
# Answer.create(body: 'The answer to this question about Html - 2', correct: true, question_id: 4)
# Answer.create(body: 'The answer to this question about Ruby - 2', correct: true, question_id: 5)
# Answer.create(body: 'The answer to this question about Kotlin - 2', correct: false, question_id: 6)
# Answer.create(body: 'The answer to this question about Html - 3', correct: true, question_id: 7)
# Answer.create(body: 'The answer to this question about Ruby - 3', correct: true, question_id: 8)
# Answer.create(body: 'The answer to this question about Kotlin - 3', correct: false, question_id: 9)

# ------------------------------------------------------------------------------------------

TestsUser.create(
  [
    {test_id: 1, user_id: 1},
    {test_id: 2, user_id: 1},
    {test_id: 3, user_id: 2},
    {test_id: 2, user_id: 3}
  ]
)