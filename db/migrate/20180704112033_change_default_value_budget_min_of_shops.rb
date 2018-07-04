class ChangeDefaultValueBudgetMinOfShops < ActiveRecord::Migration[5.1]
  def change
    change_column_default :shops, :budget_min, 0
    change_column_default :shops, :budget_max, 0
    change_column_default :shops, :genre_id, 0
    change_column_default :shops, :area_id, 0
    change_column_default :shops, :user_id, 0
    change_column_default :shops, :review_avg, 0
  end
end
