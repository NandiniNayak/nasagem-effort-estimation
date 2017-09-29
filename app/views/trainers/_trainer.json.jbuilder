json.extract! trainer, :id, :name, :category, :cost, :availability, :created_at, :updated_at
json.url trainer_url(trainer, format: :json)