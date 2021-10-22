class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.string :title
      t.text :body
     	t.string :image_id
      t.integer :user_id
      t.timestamps

      t.timestamps
    end
  end
end
