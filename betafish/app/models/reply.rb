class Reply < ActiveRecord::Base
  belongs_to :story
  belongs_to :user
  has_one :rating
  validates :content, presence: true

end