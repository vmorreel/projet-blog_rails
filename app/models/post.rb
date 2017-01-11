class Post < ApplicationRecord
  #mount_uploader :thumbnail, AvatarUploader

  belongs_to :user
end
