json.set! :comments do
  json.array! comments do |comment|
    json.body comment.body
  end
end
