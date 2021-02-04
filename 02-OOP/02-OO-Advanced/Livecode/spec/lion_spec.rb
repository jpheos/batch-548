require_relative '../lion'

describe "Lion" do
  it "an Animal" do
    lion = Lion.new("simba")
    expect(lion).to be_an(Animal)
  end

  describe "#talk" do
    it "returns a sentence stating the lion is roaring" do
      lion = Lion.new("Simba")
      expect(lion.talk).to eq("Simba roars")
    end
  end

  describe '#eat' do
    it "" do
      simba = Lion.new('Simba')
      sentence = simba.eat("gazelle")
      expect(sentence).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end
