json.extract! pedido, :id, :nombre, :direccion, :instrumento, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
