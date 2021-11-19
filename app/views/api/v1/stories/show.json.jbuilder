
json.extract! @story, :id, :title, :details
json.comments do
  json.array! @comments do |comment|
    json.extract! comment, :id, :content, :name
  end
end