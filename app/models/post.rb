class Post < ApplicationRecord
  validates :title, presence: true

  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags

  def self.searchByCategory(category_id)
    Post.where('category_id = ?', "#{category_id}")
  end

  def self.searchByTag(tag_id)
    Tag.find(tag_id).posts
  end

  def self.tag_exists(tag_name, post_id)
    tag_exists = false
    puts post_id
    post = post_id != -1 && post_id != nil ? Post.find(post_id) : false
    if post != false
      post.tags.each do |tag|
        if tag_name == tag.name
          tag_exists = true
        end
      end
    end
    tag_exists
  end

  # TODO: make these search calls dynamic

end
