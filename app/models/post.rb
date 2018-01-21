class Post < ApplicationRecord
    has_many :replies
    belongs_to :user
    
    mount_uploader :image, ImageUploader
end
