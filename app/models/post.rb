class Post < ApplicationRecord
  # belongs_to :user
  belongs_to :category
  has_and_belongs_to_many :tags

  def self.searchByCategory(category_id)
    Post.where('category_id = ?', "#{category_id}")
  end

  def self.searchByTag(tag_id)
    tag = Tag.find(tag_id)
    tag.posts
  end

  # TODO: make these search calls dynamic

end
