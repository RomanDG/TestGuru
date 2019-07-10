class User < ApplicationRecord
  has_many :tests_users
  has_many :tests, through: :tests_users
  has_many :tests

  def tests_by_level level
    Test.select(:title).joins(:users).where(users: {id: self.id}).where(tests: {level: level})
  end
end
