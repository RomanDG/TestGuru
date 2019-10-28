class Question < ApplicationRecord
  belongs_to :test
  has_many :answers
  has_many :test_passages

  validates :title, :body, presence: true

  validate :validate_quantity_answers, on: :create

  private def validate_quantity_answers
  	errors[:base] << "maximum number of answers exceeded" if answers.count >= 4
  end

end
