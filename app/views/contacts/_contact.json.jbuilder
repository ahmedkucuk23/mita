json.extract! contact, :id, :name, :business, :surname, :email, :website, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
