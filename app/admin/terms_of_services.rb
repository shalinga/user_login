ActiveAdmin.register TermsOfService, :namespace => false do
  
  menu false
  
  config.clear_sidebar_sections!
  config.clear_action_items!

  controller do
    before_filter :authorize_tos_user?, :only => [:new,:show,:edit,:update]
  end

  # actions :all, :except => [:new,:show,:edit,:update] #unless before_filter :authorize_tos_user
  
  index do
     column "", :description
  end
  
end
