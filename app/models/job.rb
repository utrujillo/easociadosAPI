class Job < ApplicationRecord
  # Assosiations
  has_many :job_images, dependent: :destroy
  belongs_to :category
end
