class AddFixColumnTitle < ActiveRecord::Migration
  def change
  	rename_column :pins, :Church_Name, :title_of_piece
    rename_column :pins, :pastor_or_worship_leader_name, :brand
  end
end
