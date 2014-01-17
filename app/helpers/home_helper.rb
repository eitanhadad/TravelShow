module HomeHelper
    
    
    
    def initializeData(user_id)
        @user = User.where(user_name: user_id).first
        @currentFriends = @user.friends
        @firstFriend = @user.friends.first
        @firstTravel = @firstFriend.travels.first
    end

end
