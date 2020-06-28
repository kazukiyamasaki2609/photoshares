class Micropost < ApplicationRecord
  has_many :favorites
  belongs_to :user
   validates :content, presence: true, length: { maximum: 255 }
   validates :necessary, presence: true, length: { maximum: 150 }
   validates :place, presence: true, length: { maximum: 150 }
   validates :move, presence: true, length: { maximum: 100 }
   validates :time, presence: true
   validates :image, presence: true
   mount_uploader :image, ImageUploader
    def self.search(search)
      if search
        Micropost.where(['place LIKE ?', "%#{search}%"])
      else
        Micropost.all
      end
    end
end
