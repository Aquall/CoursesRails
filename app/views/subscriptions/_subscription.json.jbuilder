json.extract! subscription, :id, :subscriber_id, :book_id, :start, :finish, :is_active, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
