class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :followers, :class_name => 'Follow', :foreign_key => 'follower_id'
  has_many :followees, :class_name => 'Follow', :foreign_key => 'followee_id'
  has_many :tweets
  has_many :follows
end
