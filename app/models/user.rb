class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :followers, :class_name => 'Follow', :foreign_key => 'follower_id'
  has_many :followees, :class_name => 'Follow', :foreign_key => 'followee_id'
  has_many :tweets
  has_many :following, through: :followers, source: :followee
  has_many :favorites, :class_name => 'Favorite'
  has_many :favtweets, through: :favorites, source: :tweet
  
  def follow(other)
    following << other
  end
  def unfollow(other)
    following.delete(other)
  end
  def following?(other)
    following.include?(other)
  end
  def liking?(other)
    favtweets.include?(other)
  end
  def like(other)
    favtweets << other
  end
  def unlike(other)
    favtweets.delete(other)
  end
end
