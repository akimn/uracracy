class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :Church_Name
      t.string :Pastor_or_Worship_Leader_Name
      t.string :comment

      t.timestamps
    end
  end
end
