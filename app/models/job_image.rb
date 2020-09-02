class JobImage < ApplicationRecord
  # Assosiations
  belongs_to :job
  # Uploader
  mount_uploader :imagen, JobImageUploader
end
