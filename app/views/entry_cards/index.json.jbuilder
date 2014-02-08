json.array!(@entry_cards) do |entry_card|
  json.extract! entry_card, :id, :finish_flag, :user_id, :rally_id
  json.url entry_card_url(entry_card, format: :json)
end
