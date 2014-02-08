json.array!(@rallies) do |rally|
  json.extract! rally, :id, :title, :detail, :opening, :ending
  json.url rally_url(rally, format: :json)
end
