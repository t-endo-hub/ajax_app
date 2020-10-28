class Post < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorited_posts,through: :favorites, source: :post

  def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end

  
end
