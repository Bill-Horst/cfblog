class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :subtitle
      t.text :post_body

      t.timestamps
    end
  end
end
