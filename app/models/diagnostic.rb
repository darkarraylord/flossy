class Diagnostic < ApplicationRecord
  belongs_to :user
  mount_uploader :photo, PhotoUploader
  
  after_save :async_update # Run on create & update
  
  private

  def async_update
    DiagnosticJob.perform_later(self.id)
  end
end
