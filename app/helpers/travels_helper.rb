module TravelsHelper
    
    def getfriendId(userName)
        @meFriend = Friend.where(user_name: userName).first
        @user_id = @meFriend.user_id
    end
    
    def add_experience_link(name)
        link_to_function name, "" do |page|
            page.insert_html :bottom, :experiences, :partial => 'experience', :object => Experience.new
        end
    
    end
    

    

end
