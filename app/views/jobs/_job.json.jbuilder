json.extract! job, :id, :boat_id, :status, :load_amount, :sender_id, :buyer_id, :cost, :origin, :destination, :created_at, :updated_at
json.url job_url(job, format: :json)
