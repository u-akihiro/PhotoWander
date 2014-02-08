json.array!(@checkpoints) do |checkpoint|
  json.extract! checkpoint, :id, :ucode, :name, :lat, :lng, :radius
  json.url checkpoint_url(checkpoint, format: :json)
end
