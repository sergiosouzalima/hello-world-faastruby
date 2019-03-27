require 'spec_helper'
require 'handler'
require 'pry'

describe '#handler' do
  let(:body) { handler(event).body }
  let(:event) {
    Event.new(
      body: nil, query_params: {},
      headers: {}, context: nil
    )
  }

  context 'when function is requested' do
    let(:first_part_response) {
      response_value.split.first
    }
    let(:second_part_response) {
      response_value.split.last
    }
    let(:response_value) {
      JSON.parse(body).values.first
    }
    it "returns 'Hello," do
      expect(first_part_response).to eq('Hello,')
    end
    it "returns a name" do
      expect(second_part_response).to be_a(String)
    end
  end
end
