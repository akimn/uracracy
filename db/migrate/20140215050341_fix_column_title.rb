class FixColumnTitle < ActiveRecord::Migration
    def self.up
    	rename_column :pins :Church_Name, :title_of_piece
    	rename_column :pastor_or_worship_leader_name, :brand
    end

  	def self.down
	 	end
	end

 # def change
  #	change_table :pins do |t|
   #   t.change :Church_Name, :title_of_piece
    #  t.change :pastor_or_worship_leader_name, :brand
    #end
  #end
#end
