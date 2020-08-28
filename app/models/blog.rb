class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
end
