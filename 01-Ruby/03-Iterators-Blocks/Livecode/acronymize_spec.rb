require_relative 'acronymize'


describe '#acronymize' do
  it 'returns an empty string when passed an empty string' do
    result = acronymize('')
    expect(result).to eq('')
  end

  it 'returns the acronym on downcased sentences' do
    result = acronymize('away form keyboard')
    expect(result).to eq('AFK')
  end

  it 'returns the acronym on upcased sentences' do
    result = acronymize('AWAY FORM KEYBOARD')
    expect(result).to eq('AFK')
  end
end
