require_relative '../lib/inspire'

describe Inspire do
  describe '#make_the_request' do
    let(:request) { Inspire.new }
    let(:request_json) { request.request_inspiration }

    it 'returns json response when the request is sucessful' do
      expect(request_json.class).to eql(Array)
    end

    it 'returns an array response should not be empty' do
      expect(request_json.length).not_to eql(0)
    end
  end

  describe '#any_inspiration' do
    let(:random) { Inspire.new }
    let(:any_inspiration) { random.any_inspiration }

    it 'returns a Hash' do
      expect(any_inspiration.class).to eql(Hash)
    end

    it 'returns a key and a value' do
      expect(any_inspiration.length).to eql(2)
    end
  end
end