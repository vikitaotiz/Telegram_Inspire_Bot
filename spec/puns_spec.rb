require_relative '../lib/puns'

describe Pun do
  describe '#request_pun' do
    let(:request) { Pun.new }
    let(:request_pun) { request.request_pun }

    it 'returns a hash response when the request is sucessful' do
      expect(request_pun.class).to eql(Hash)
    end

    it 'returns an array response should not be empty' do
      expect(request_pun.length).not_to eql(0)
    end
  end
end
