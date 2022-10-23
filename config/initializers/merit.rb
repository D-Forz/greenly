# Use this hook to configure merit parameters
Merit.setup do |config|
  # Check rules on each request or in background
  # config.checks_on_each_request = true

  # Add application observers to get notifications when reputation changes.
  # config.add_observer 'MyObserverClassName'

  # Define :user_model_name. This model will be used to grant badge if no
  # `:to` option is given. Default is 'User'.
  # config.user_model_name = 'User'

  # Define :current_user_method. Similar to previous option. It will be used
  # to retrieve :user_model_name object if no `:to` option is given. Default
  # is "current_#{user_model_name.downcase}".
  # config.current_user_method = 'current_user'
end

Rails.application.reloader.to_prepare do
  Merit::Badge.create!(
    id: 1,
    name: "My First Post",
    description: "Create your first post in mygreenly.me"
  )
  Merit::Badge.create!(
    id: 2,
    name: "Five Comments",
    description: "Create five comments"
  )
  Merit::Badge.create!(
    id: 3,
    name: "The Commenter",
    description: "Over 25 comments"
  )
  Merit::Badge.create!(
    id: 4,
    name: "The Post Maker",
    description: "Over 10 posts"
  )
  Merit::Badge.create!(
    id: 5,
    name: "This is Greenly",
    description: "Create your first event"
  )
  Merit::Badge.create!(
    id: 6,
    name: "The Event Maker",
    description: "Over 5 events"
  )
  Merit::Badge.create!(
    id: 7,
    name: "The Event Attender",
    description: "Over 10 events attended"
  )
end
