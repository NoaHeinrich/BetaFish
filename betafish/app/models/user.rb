class User < ActiveRecord::Base
  has_many :written_ratings, class_name: "Rating"
  has_many :stories
  has_many :replies
  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true,
                    presence: true,
                    format: { with: /\w+@\w+\.\w{2,3}/i, message: "please enter a valid email address"}

  has_secure_password(validations: false)

  def get_avg_rating
    if replies.length > 0
      ratings = []
      replies.each do |reply|
        if reply.rating
          ratings << reply.rating.score.to_f
        end
      end
      average = ratings.reduce(:+) / ratings.length.to_f
      average
    else
      nil
    end
  end

end