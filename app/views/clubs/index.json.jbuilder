json.array!(@clubs) do |club|
  json.extract! club, :id, :title, :description, :image_url
  json.url club_url(club, format: :json)
end
