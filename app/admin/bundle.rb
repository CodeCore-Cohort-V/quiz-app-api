ActiveAdmin.register Bundle do
  
# action_item :view do
#                 para button_to 'Approve'
#               end
  show do
  bundle = Bundle.find params[:id]
  bundle.toggle!(:approved)
  para button_to "Approve", bundle_path(bundle), method: "patch"

  h3
  attributes_table do
    row :name
    row :topic
    row :difficulty
  end

  # h3 panel "User" do
  #   bundle.user.id
  # end

  h3 "Questions" 
    table_for bundle.questions do

      column "Content" do |question|
      h5 question.content
      end
  
      column "Examples" do |question|
        question.example
      end
    end
  
end

# update do
# h3
#   attributes_table do
#     row :name
#     row :topic
#     row :difficulty
#     row :question
#     end
#       table_for bundle.questions do
#         column "Questions" do |question|
#         p question.content
#         end
#         column "Examples" do |question|
#         question.example
#         end
#       end
  


  controller do
    def scoped_collection
      resource_class.includes(:topic) # prevents N+1 queries to your database
    end
    def scoped_collection
      resource_class.includes(:user) # prevents N+1 queries to your database
    end
  end

  index do
    column "Approved", :approved
    column "Bundle name", :name
    column :topic, sortable: 'topics.name'
    column :difficulty, :difficulty
    column "Created by", :user, sortable: 'user.id'
    column "Created at", :created_at
    actions
  end
end


