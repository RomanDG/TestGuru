class Category < ApplicationRecord
	has_many :tests

	validates :title, presence: true

	default_scope { order(created_at: :asc) }

end
