class Pin < ActiveRecord::Base
	belongs_to :user
	
	def self.search(search)
		
	   if search
	   #	@items = Item.where('name LIKE ? OR description LIKE ? OR category LIKE ?', key, key, key).order(:name)
      	
      	where('comment LIKE ? OR \"Church_Name LIKE\" ? OR \"Pastor_or_Worship_Leader_Name LIKE\" ?', "%#{search}%", "%#{search}%", "%#{search}%")
      	#where('comment LIKE ? OR pastor_or_worship_leader_name LIKE ?', "%#{search}%", "%#{search}%")
      	
      	 #if search
	   #where('comment LIKE ?', "%#{search}%")
	   #where('pastor_or_worship_leader_name LIKE ?', "%#{search}%")
	   #where('church_name LIKE ?', "%#{search}%")
	 # elsif search != where('Church_Name LIKE ?', "%#{search}%")
	  #  search
	   # where('Pastor_or_Worship_Leader_Name LIKE ?', "%#{search}%")
	 # elsif search 
	  #	where('comment LIKE ?', "%#{search}%")

	  else
	    scoped

	  end
	end

end
