RSpec.describe "UHC - Patient is the subscriber", type: :eligibility_response do
  let(:file) {"uhc/patient_is_subscriber.xml"}

  let(:trace_number) {"851370272"}
  include_examples "active coverage"

  context "subscriber" do
    let(:subscriber) {response.subscriber}

    it {expect(subscriber.name.first).to eq("Juliet")}
    it {expect(subscriber.name.middle).to eq("F")}
    it {expect(subscriber.name.last).to eq("Rempel")}
    it {expect(subscriber.name.address).to eq("675 D'Amore Rapid")}
    it {expect(subscriber.name.city).to eq("Port Rosario")}
    it {expect(subscriber.name.state).to eq("CO")}
    it {expect(subscriber.name.zip).to eq("28071")}
    it {expect(subscriber.id).to eq('12345679')}
    it {expect(subscriber.date_of_birth).to eq('19561211')}
    it {expect(subscriber.group_number).to eq('123456')}
  end
end
