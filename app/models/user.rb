class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 attachment :image # ここを追加（_idは含めない）
 has_many :posts
 has_many :favorites, dependent: :destroy
 has_many :favorite_posts, through: :favorites

end
