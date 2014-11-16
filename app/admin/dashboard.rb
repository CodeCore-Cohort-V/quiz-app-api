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
    #
    columns do
      column do
        panel "Pending" do
          ul do
            Bundle.all.map do |post|
              if post.approved == false
                li link_to(post.name, admin_bundle_path(post)) 
                para post.difficulty
              end
            end
          end
        end
      end

      # column do
      #   panel "Pending" do
      #     para "Welcome to ActiveAdmin."
      #   end
      # end
    end
  end # content
end
