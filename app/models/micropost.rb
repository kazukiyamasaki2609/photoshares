class Micropost < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
   validates :content, presence: true, length: { maximum: 255 }
   validates :necessary, presence: true, length: { maximum: 150 }
   validates :place, presence: true, length: { maximum: 150 }
   validates :move, presence: true, length: { maximum: 100 }
   validates :time, presence: true
   
    def self.search(search)
      if search
        Micropost.where(['place LIKE ?', "%#{search}%"])
      else
        Micropost.all
      end
    end
end
