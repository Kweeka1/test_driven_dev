describe Solver do
  it 'should factorize num' do
    expect { factorize(1) }.to raise_error ArgumentError
  end
  it 'reverses a string' do
    expect(reverse('hello')).to eq('olleh')
  end
end
