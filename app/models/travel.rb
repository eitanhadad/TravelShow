class Travel < ActiveRecord::Base
    belongs_to :friend
    has_many :posts
end
