class Story < ActiveRecord::Base
  belongs_to :user
  has_many :replies
  has_many :classifications
  has_many :genres, through: :classifications

  validates :title, presence: true
  has_attached_file :content
  validates :content, :attachment_presence => true
  validates_attachment :content, :content_type => { :content_type => %w(application/pdf application/msword) }
end