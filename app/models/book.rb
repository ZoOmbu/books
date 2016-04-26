class Book < ActiveRecord::Base
  DRAFT_STATE = [ "True", "False" ]
  validates :title, :description, :image_url, :genre, :author, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {with: %r{\.(jpg)\Z}i,
  message: 'URL must be a JPG'}
  validates :drafts, inclusion: DRAFT_STATE
  belongs_to :user


end
