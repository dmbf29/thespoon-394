class Restaurant < ApplicationRecord
  # associations
  # validations
  validates :name, presence: true
end
