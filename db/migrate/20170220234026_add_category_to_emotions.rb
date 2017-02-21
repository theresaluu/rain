class AddCategoryToEmotions < ActiveRecord::Migration[5.0]
  def change
    add_reference :emotions, :category, foreign_key: true
  end
end
