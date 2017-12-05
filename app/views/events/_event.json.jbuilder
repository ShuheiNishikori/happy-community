json.extract! event, :id, :community_id, :name, :event_start_at, :event_end_at, :place, :created_at, :updated_at
json.url event_url(event, format: :json)
