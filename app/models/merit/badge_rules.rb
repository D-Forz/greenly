# Be sure to restart your server when you modify this file.
#
# +grant_on+ accepts:
# * Nothing (always grants)
# * A block which evaluates to boolean (recieves the object as parameter)
# * A block with a hash composed of methods to run on the target object with
#   expected values (+votes: 5+ for instance).
#
# +grant_on+ can have a +:to+ method name, which called over the target object
# should retrieve the object to badge (could be +:user+, +:self+, +:follower+,
# etc). If it's not defined merit will apply the badge to the user who
# triggered the action (:action_user by default). If it's :itself, it badges
# the created object (new user for instance).
#
# The :temporary option indicates that if the condition doesn't hold but the
# badge is granted, then it's removed. It's false by default (badges are kept
# forever).

module Merit
  class BadgeRules
    include Merit::BadgeRulesMethods

    def initialize
      grant_on 'posts#create', badge_id: 1, badge: 'First Post', to: :user do |post|
        post.user.posts.count == 1
      end

      grant_on 'comments#create', badge_id: 2, badge: 'Five Comments', to: :user do |comment|
        comment.user.comments.count >= 5 && comment.user.comments.count < 25
      end

      grant_on 'comments#create', badge_id: 3, badge: 'The Commenter', to: :user do |comment|
        comment.user.comments.count >= 25
      end

      grant_on 'posts#create', badge_id: 4, badge: 'The Poster Maker', to: :user do |post|
        post.user.posts.count >= 10
      end

      grant_on 'events#create', badge_id: 5, badge: 'This is Greenly', to: :user do |event|
        event.user.events.count == 1
      end

      grant_on 'events#create', badge_id: 6, badge: 'The Event Maker', to: :user do |event|
        event.user.events.count >= 10
      end

      grant_on 'attendances#create', badge_id: 7, badge: 'My First Event', to: :user do |attendance|
        attendance.user.attendances.count == 1
      end

      grant_on 'attendances#create', badge_id: 8, badge: 'The Event Attender', to: :user do |attendance|
        attendance.user.attendances.count >= 10
      end
    end
  end
end
