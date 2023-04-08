class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  belongs_to :list
  validates :title, presence: true, uniqueness: true

  attribute :poster_url, :string
  attribute :rating, :float
end
