require_relative 'slot_machine'

describe '#compute_score' do
  it "joker / joker / joker" do
    machine = SlotMachine.new
    machine.items = %w[joker joker joker]
    machine.compute_score

    expect(machine.score).to eq 50
  end

  it "star / star / star" do
    machine = SlotMachine.new
    machine.items = %w[star star star]
    machine.compute_score

    expect(machine.score).to eq 40
  end

  it "bell / joker / bell" do
    machine = SlotMachine.new
    machine.items = %w[ bell joker bell ]
    machine.compute_score

    expect(machine.score).to eq 15
  end

  it "bell / joker / seven" do
    machine = SlotMachine.new
    machine.items = %w[ bell joker seven ]
    machine.compute_score

    expect(machine.score).to eq 0
  end
end
