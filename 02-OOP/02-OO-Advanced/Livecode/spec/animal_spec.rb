require_relative '../animal'

describe "Animal" do
  it "returns name" do
    animal = Animal.new("simba")
    expect(animal.name).to eq("simba")
  end

  describe '.phyla' do
    it "returns an array of the four phyla" do
      expect(Animal.phyla).to eq(%w[Deuterostomia Ecdysozoa Lophotrochozoa Radiata])
    end
  end

  describe '#eat' do
    it "" do
      timon = Animal.new('Timon')
      sentence = timon.eat("scorpion")
      expect(sentence).to eq("Timon eats a scorpion")
    end
  end
end
