class Post < ApplicationRecord
  mount_uploader :thumbnail, AvatarUploader
  validates :content, presence: true
  validates :title, presence: true
  validates :lead_paragraph, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end
