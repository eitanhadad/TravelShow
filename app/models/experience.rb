class Experience < ActiveRecord::Base
    
    belongs_to :travel
    validates_presence_of :title
    
    has_attached_file :picture
end
