class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags

  def self.searchByCategory(category_id)
    Post.where('category_id = ?', "#{category_id}")
  end

  def self.searchByTag(tag_id)
    Tag.find(tag_id).posts
  end

  # TODO: make these search calls dynamic

end
