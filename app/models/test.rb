class Test < ApplicationRecord
  belongs_to :category
  has_many :tests_users
  has_many :users, through: :tests_users
  belongs_to :author, class_name: "User", foreign_key: "author_id"

  validates :title, presence: true
  validates :title, uniqueness: { scope: :level, message: "should be one test with a given name and level"}
  validates_numericality_of :level, greater_than_or_equal_to: 0

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :by_category, -> (value){ 
    joins(:category).where(categories: { title: value })
  }

  # scope :by_level, -> (level) { select(:title).joins(:users).where(tests: {level: level}) } # как альтернативный вариант
  scope :by_level, -> (level){ select(:title).where(level: level) }

  def self.ordered_by_category value
    order(title: :desc).by_category(value).pluck(:title)
  end

end