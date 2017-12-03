class AddImageurlToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :imageurl, :string
  end
end
