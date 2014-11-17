ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end
 
  
    # Here is an example of a simple dashboard with columns and panels.
    #columns do
    
      # column do
    # end
    
  

    columns do
      column  do
        span "Pending"
          Bundle.all.map do |bundle|
            panel "" do
              unless bundle.approved == true
                para link_to(bundle.name, admin_bundle_path(bundle)) 
                para bundle.questions.count
                para bundle.difficulty 
                bundle.questions.each do |question|
                para question.content
                end
              end
            end    
          end
      end
  
    # column do
    #   span "Column # 2"
    # end
end
end
end
  # content


  
#       column do
#         panel "Pending" do
#           para "Welcome to ActiveAdmin."
#         end
#       end
#     end
# end