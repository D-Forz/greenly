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
    name: "pioneer",
    description: "One of the first 100 members",
    custom_fields: { icon_class: "fa-solid fa-user" }
  )
  Merit::Badge.create!(
    id: 2,
    name: "First Post",
    description: "Create your first post",
    custom_fields: { icon_class: "fa-solid fa-user" }
  )
  Merit::Badge.create!(
    id: 3,
    name: "First Comment",
    description: "Write your first comment",
    custom_fields: { icon_class: "fa-solid fa-comment" }
  )
  Merit::Badge.create!(
    id: 4,
    name: "The Commenter",
    description: "Over 10 comments",
    custom_fields: { icon_class: "fa-solid fa-comment" }
  )
  Merit::Badge.create!(
    id: 5,
    name: "The Poster",
    description: "Over 10 posts",
    custom_fields: { icon_class: "fa-solid fa-user" }
  )
  Merit::Badge.create!(
    id: 6,
    name: "My First Event",
    description: "Create your first event",
    custom_fields: { icon_class: "fa-solid fa-calendar" }
  )
end
