module TravelsHelper
    
    def getfriendId(userName)
        @meFriend = Friend.where(user_name: userName).first
        @user_id = @meFriend.user_id
    end
    
    def add_experience_link(title)
        link_to_function title, "alert(title)" do |page|
            page.insert_html :bottom, :experiences, :partial => 'experience', :object => Experience.new
        end
    
    end
    

end
