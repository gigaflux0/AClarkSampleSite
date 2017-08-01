class Vehicle < ApplicationRecord
  belongs_to :branch
  has_many :photos
end
