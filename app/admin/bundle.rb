ActiveAdmin.register Bundle do
permit_params :name, :approved, :user_id, :topic_id, :difficulty 

end


ActiveAdmin.register Question do
  belongs_to :bundle
 show do
  h5 question.name
     end 

end








  # or

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end



