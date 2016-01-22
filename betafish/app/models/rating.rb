class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :reply

  validates :score, presence: true, numericality: { greater_than: 0, less_than: 6, only_integer: true }
end