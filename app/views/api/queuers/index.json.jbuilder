json.queuedBundles @bundles.each do |bundle|
  json.(bundle, :id, :name, :topic_id, :difficulty)
end