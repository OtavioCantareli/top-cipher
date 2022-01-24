require './lib/main'

describe cipher('AbC xYz 123', 1) do
  it 'should return correct result' do
    expect(cipher('AbC xYz 123', 1)).to eql('BcD yZa 234')
    expect(cipher('AbC xYz 123', -1)).to eql('ZaB wXy 012')
  end
  it 'should not return wrong result' do
    expect(cipher('AbC xYz 123', 1)).not_to eql('123')
  end
end
