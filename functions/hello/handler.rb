require 'json'
require 'rest-client'

def handler event
  url = 'https://realistic-faker-stage-79ec2c.tor1.faast.cloud/person'
  json = RestClient.get url, accept: :json
  fake_person_hash = Oj.load(json)
  # name = (pname = event.query_params['name']) ? pname : 'world!!'
  render json: { 'message' => "Hello, #{fake_person_hash['first_name']}!" }
end
