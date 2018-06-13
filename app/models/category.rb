class Category < ApplicationRecord
  has_many :posts

  def self.searchById(category_id)
    Category.find(category_id).name
  end
end
