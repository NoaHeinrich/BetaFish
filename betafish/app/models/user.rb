class User < ActiveRecord::Base
  has_many :written_ratings, class_name: "Rating"
  has_many :stories
  has_many :replies
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true,
                    presence: true,
                    format: { with: /\w+@\w+\.\w{2,3}/i, message: "please enter a valid email address"}

end