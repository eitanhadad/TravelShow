class Travel < ActiveRecord::Base
    belongs_to :friend
    has_many :posts
    has_many :experiences
    
    has_attached_file :photo
    
    accepts_nested_attributes_for :experiences
    validates_presence_of :title
    
    #def new_experience_attributes=(experience_attributes)
    #experience_attributes.each do |attr|
    #experiences.build(attr)
    #end
    #end

end
