require_relative '../lib/puns'

describe Pun do
  describe '#make_the_request' do
    let(:request) { Pun.new }
    let(:request_json) { request.request_pun }
    
    it 'return hash response when the request is sucessful' do
      expect(request_json.class).to eql(Hash)
    end

    it 'returns an array response should not be empty' do
      expect(request_json.length).not_to eql(0)
    end
  end
end