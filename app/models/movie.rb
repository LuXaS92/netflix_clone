class Movie < ApplicationRecord
  has_one_attached :poster_image
end
