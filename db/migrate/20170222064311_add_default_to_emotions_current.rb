class AddDefaultToEmotionsCurrent < ActiveRecord::Migration[5.0]
  def change
    change_column :emotions, :current, :string, :default => true

    Emotion.all.each do |p|
      p.update_attribute(:current, true)
    end
  end
end
