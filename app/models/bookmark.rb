class Bookmark < ApplicationRecord

  belongs_to :movie
  belongs_to :list
  has_many :lists
  validates_length_of :comment, :minimum => 6
  validates_uniqueness_of :movie_id, scope: :list_id
#   A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
# The comment of a bookmark cannot be shorter than 6 characters.

end
