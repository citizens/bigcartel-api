RSpec.shared_examples 'a retrievable object' do |subject, attributes|
  let(:object) { VCR.use_cassette(subject.to_s) { subject.retrieve } }

  attributes.each do |attribute|
    it "should return a value for #{attribute}" do
      expect(object.respond_to?(attribute)).to be true
    end
  end
end
