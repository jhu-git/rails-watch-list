class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_length_of :comment, minimum: 6
  validates :list_id, uniqueness: { scope: :movie_id }
end
