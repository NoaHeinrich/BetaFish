class Genre < ActiveRecord::Base
  has_many :classifications
  has_many :stories, through: :classifications

  validates :name, presence: true, uniqueness: true
end