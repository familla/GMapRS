json.array!(@map_places) do |map_place|
  json.extract! map_place, :id, :place, :latitude, :longitude
  json.url map_place_url(map_place, format: :json)
end
