def handler event
  response = {
    'message' => "Hello World"
  }
  render json: response
end
