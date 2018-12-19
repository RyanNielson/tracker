json.extract! game, :id, :title, :platform, :thoughts, :rating, :released_on, :completed_on, :created_at, :updated_at
json.url game_url(game, format: :json)
