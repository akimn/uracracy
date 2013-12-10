class Pin < ActiveRecord::Base
	belongs_to :user
	
	def self.search(search)
	  if search
	    where('Church_Name LIKE ?', "%#{search}%")
	  else
	    scoped
	  end
	end

end
