class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :shop_id, null: false
      t.integer :user_id, null: false
      t.string :title, null: false, default: ""
      t.text :description, null: false, default: ""
      t.text :image
      t.integer :evaluation, null: false

      t.timestamps
    end
  end
end
