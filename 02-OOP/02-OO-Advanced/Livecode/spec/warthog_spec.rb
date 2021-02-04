require_relative '../warthog'

describe "Warthog" do

  describe "#talk" do
    it "returns a sentence stating the warthog is grunting" do
      warthog = Warthog.new("Pumbaa")
      expect(warthog.talk).to eq("Pumbaa grunts")
    end
  end
end
