ActiveAdmin.register Bundle do
  show do
    attributes_table do
      row :name
      row :topic
      row :difficulty
    end

    panel "User" do
      bundle.user.email
    end

    panel "Questions" do
      table_for bundle.questions do

        column "Content" do |question|
          question.content
        end
    
        column "Examples" do |question|
          question.example
        end
      end
    end
  end

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
    column "Created by", :user, sortable: 'user.email'
    column "Created at", :created_at
    actions
  end
end


