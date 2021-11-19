json.stories do
  json.array! @stories do |story|

    json.extract! story, :id, :title, :details

  end
end