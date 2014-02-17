class FixColumnTitle < ActiveRecord::Migration
    def change
    	rename_column :pins, :Church_Name, :title_of_piece
    	rename_column :pins, :pastor_or_worship_leader_name, :brand
    end
	end

 # def change
  #	change_table :pins do |t|
   #   t.change :Church_Name, :title_of_piece
    #  t.change :pastor_or_worship_leader_name, :brand
    #end
  #ends
#end
