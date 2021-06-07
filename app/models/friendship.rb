class Friendship < ApplicationRecord
    validates :user_id, :friend_id, presence: true

    belongs_to :user,
    foreign_key: :user_id,
    class_name: :User 

    belongs_to :friend,
    foreign_key: :friend_id,
    class_name: :User 

    def connected_friendships
        friendship = Friendship.find_by(friend_id: self.user_id, user_id: self.friend_id)
    end
    
end