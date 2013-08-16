class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments

  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :user, presence: true
  validates :body, presence: true
end
