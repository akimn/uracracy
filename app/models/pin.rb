class Pin < ActiveRecord::Base
	belongs_to :user
	
	validates :Church_Name, presence: true
	validates :Pastor_or_Worship_Leader_Name, presence: true
	validates :comment, presence: true
	
	validates :Church_Name, length: { minimum: 1 }
  validates :Church_Name, length: { maximum: 255 }
  validates :Pastor_or_Worship_Leader_Name, length: { minimum: 1 }
  validates :Pastor_or_Worship_Leader_Name, length: { maximum: 255 }
  validates :comment, length: { minimum: 1 }
  validates :comment, length: { maximum: 255 }

  validates :password, length: { in: 6..40 }

	def self.search(search)
		
	  if search	
      where('comment ILIKE ? OR "Church_Name" ILIKE ? OR "Pastor_or_Worship_Leader_Name" ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
	  else
	    scoped
	  end

	end

end
