class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_many :replies              #repilesテーブルとのアソシエーション
  has_many :reviews
  has_one :profile
  has_one :bar_code
end
