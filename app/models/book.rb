class Book < ActiveRecord::Base
  validates :title, :description, :image_url, :genre, :author, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {with: %r{\.(jpg)\Z}i,
  message: 'URL must be a JPG'}
  belongs_to :user


end
