json.extract! secured_asset, :id, :account_number, :cash, :created_at, :updated_at
json.url secured_asset_url(secured_asset, format: :json)
