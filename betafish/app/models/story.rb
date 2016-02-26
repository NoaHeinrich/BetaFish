class Story < ActiveRecord::Base
  belongs_to :user
  has_many :replies
  has_many :classifications
  has_many :genres, through: :classifications

  validates :title, presence: true
  validates :content, presence: true
  validates :content, length: { maximum: 3000 }
end