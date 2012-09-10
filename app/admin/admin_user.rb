ActiveAdmin.register User do
  
  batch_action :flag do |selection|
    User.find(selection).each do |user|
      user.flag! :hot
    end
  end
           
  index do
    selectable_column                          
    column :email                     
    column :current_sign_in_at        
    column :last_sign_in_at           
    column :sign_in_count             
    default_actions                   
  end                                 

  filter :email                       

  form do |f|                         
    f.inputs "Admin Details" do       
      f.input :email                  
      f.input :password               
      f.input :password_confirmation  
    end                               
    f.buttons                         
  end                                 
end                                   
