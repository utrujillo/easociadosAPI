class Category < ApplicationRecord
  # Assosiations
  has_many :jobs, dependent: :destroy
end
