json.extract! event, :id, :title, :event_datetime, :created_at, :updated_at
json.url event_url(event, format: :json)
