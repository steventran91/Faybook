json.user do 
    json.extract! user, :first_name, :last_name, :email, :id, :birthday, :gender
    if user.profile_pic
        json.profile_pic url_for(user.profile_pic)
    else 
        json.profile_pic image_url('default_prof_male.jpg')
    end
    if user.cover_photo
        json.cover_photo url_for(user.cover_photo)
    else 
        json.cover_photo nil 
    end
end


# json.friend_requests do
#     user.outgoing_friend_requests.each do |friend_request|
#         json.set! friend_request.id do
#             json.extract! friend_request, :requester_id, :requested_id, :id, :created_at
#         end
#     end

#     user.received_friend_requests.each do |friend_request|
#         json.set! friend_request.id do 
#             json.extract! friend_request, :requester_id, :requested_id, :id, :created_at
#         end
#     end
# end

# json.friendships do 
#     user.friendships.each do |friendship|
#         json.set! friendship.id do 
#             json.extract! friendship, :user_id, :friend_id, :id, :created_at 
#         end
#     end
# end
