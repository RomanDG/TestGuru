class Test < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :users

  def ordered_by_category category
    Test.order(title: :desc).joins("join categories on tests.category_id = categories.id").where(categories: { title: category }).pluck(:title)
  end
end

# проблемма отступов решена