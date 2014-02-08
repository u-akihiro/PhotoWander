json.array!(@stamps) do |stamp|
  json.extract! stamp, :id, :file_name, :file_type, :file_size, :file_width, :file_height, :checkpoint_id, :entry_card_id
  json.url stamp_url(stamp, format: :json)
end
