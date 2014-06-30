json.set! :posts do
  json.array! @posts do |post|
    json.title post.title
    json.body post.body
    json.partial! 'api/comments/index', :comments => post.comments
  end
end
