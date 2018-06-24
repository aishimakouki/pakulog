class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false, default: ""
      t.text :description, null: false, default: ""
      t.text :image,
      t.integer :budget_min, null: false
      t.integer :budget_max, null: false
      t.integer :genre_id, null: false
      t.integer :area_id, null: false
      t.integer :user_id, null: false
      t.integer :review_avg, null: false

      t.timestamps
    end
  end
end
