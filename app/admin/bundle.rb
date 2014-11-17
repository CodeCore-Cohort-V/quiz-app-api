ActiveAdmin.register Bundle do
  show do
    attributes_table do
      row :name
      row :difficulty
    end


  panel "User" do
    attributes_table_for bundle.user do
      row :email
    end
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
end

