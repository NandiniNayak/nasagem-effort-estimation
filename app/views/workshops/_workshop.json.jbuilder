json.extract! workshop, :id, :name, :start_date, :end_date, :start_time, :end_time, :address, :contact, :amount, :effort_id, :created_at, :updated_at
json.url workshop_url(workshop, format: :json)