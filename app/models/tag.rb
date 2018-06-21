class Tag < ApplicationRecord
  has_and_belongs_to_many :posts

  def self.searchById(tag_id)
    Tag.find(tag_id).name
  end

  def self.searchByName(tag_name)
    Tag.where("name = ?", tag_name)
  end
end
