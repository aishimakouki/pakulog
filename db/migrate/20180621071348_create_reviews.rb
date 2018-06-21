class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :shop_id
      t.integer :user_id
      t.string :title
      t.text :description
      t.text :image
      t.integer :evaluation

      t.timestamps
    end
  end
end
