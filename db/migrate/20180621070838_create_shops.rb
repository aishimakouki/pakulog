class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.text :description
      t.text :image
      t.integer :budget_min
      t.integer :budget_max
      t.integer :genre_id
      t.integer :area_id
      t.integer :user_id
      t.integer :review_avg

      t.timestamps
    end
  end
end
