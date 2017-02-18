class CreateEmotions < ActiveRecord::Migration[5.0]
  def change
    create_table :emotions do |t|
      t.text :recognize
      t.text :investigation
      t.text :action_item
      t.boolean :current

      t.timestamps
    end
  end
end
