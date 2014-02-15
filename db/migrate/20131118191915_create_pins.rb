class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :Church_Name
      t.string :pastor_or_worship_leader_name
      t.string :comment

      t.timestamps
    end
  end
end
