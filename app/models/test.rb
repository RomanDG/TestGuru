class Test < ApplicationRecord
  belongs_to :category

  def ordered_by_category category
    Test.order(title: :desc).joins("join categories on tests.category_id = categories.id").where(categories: { title: category }).pluck(:title)
  end
end
