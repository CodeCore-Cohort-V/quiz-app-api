json.bundles @topic.bundles do |bundle|
  if bundle.approved?
    json.(bundle, :id, :name, :difficulty)
  end

end