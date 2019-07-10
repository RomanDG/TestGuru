class Test < ApplicationRecord
  belongs_to :category
  has_many :tests_users
  has_many :users, through: :tests_users
  belongs_to :user

  def self.ordered_by_category category
    Test.order(title: :desc).joins("join categories on tests.category_id = categories.id").where(categories: { title: category }).pluck(:title)
  end
end

# проблемма отступов решена