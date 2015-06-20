RSpec.shared_examples 'a findable object' do |id, attributes|
  let(:object) { VCR.use_cassette("#{subject.class.to_s}_#{id}") { subject.class.find(id) } }

  attributes.each do |attribute|
    it "should return a value for #{attribute}" do
      expect(object.respond_to?(attribute)).to be true
    end
  end
end
