class Product < ApplicationRecord
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  # validates :image, attachment_presence: true
  # validates_with AttachmentPresenceValidator, attributes: :image
  # validates_with AttachmentSizeValidator, attributes: :image, less_than: 1.megabytes
  # validates_attachment :image, content_type: ["image/jpeg", "image/gif", "image/png"]

end
