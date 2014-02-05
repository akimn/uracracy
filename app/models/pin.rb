class Pin < ActiveRecord::Base
	belongs_to :user
	
	validates :church_name, presence: true
	validates :pastor_or_worship_leader_name, presence: true
	validates :comment, presence: true
	
	validates :church_name, length: { minimum: 2 }
  	validates :church_name, length: { maximum: 255 }
  	validates :Brand, length: { minimum: 1 }
  	validates :Brand, length: { maximum: 255 }
  	validates :comment, length: { minimum: 1 }
  	validates :comment, length: { maximum: 255 }

  	#validates :password, length: { in: 6..40 }

  	

	def self.search(search)
		
	  if search	
      	where('comment ILIKE ? OR "church_name" ILIKE ? OR "Brand" ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
	  else
	    scoped
	  end

	end
	has_attached_file :image, :styles => { :medium => "700x700>", :thumb => "100x100>" }
end
