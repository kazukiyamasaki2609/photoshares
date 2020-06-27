class Micropost < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
   validates :content, presence: true, length: { maximum: 255 }
   validates :necessary, presence: true, length: { maximum: 255 }
   validates :place, presence: true, length: { maximum: 255 }
   validates :move, presence: true, length: { maximum: 255 }
   validates :time, presence: true
end
