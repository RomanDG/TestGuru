class Test < ApplicationRecord
  belongs_to :category

  def self.sort_of_desc_list category_id
		Test.order(title: :desc).where(category_id: 1)
	end
end
