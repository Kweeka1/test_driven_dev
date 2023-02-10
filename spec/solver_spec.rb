require './solver'
describe Solver do
  let(:solver) { Solver.new }

  it 'checks if the number is negative' do
    expect { solver.factorize(-1) }.to raise_error ArgumentError
  end

  it 'should return the factorial of a n number' do
    expect(solver.factorize(5)).to be 120
    expect(solver.factorize(10)).to be 3_628_800
    expect(solver.factorize(3)).to be 6
    expect(solver.factorize(7)).to be 5040
  end

  it 'reverses a string' do
    expect(solver.reverse('hello')).to eq('olleh')
  end

  it 'should solve fizzbuzz challenge' do
    expect(solver.fizzbuzz(10)).to match '1 2 fizz 4 buzz fizz 7 8 fizz buzz'
    expect(solver.fizzbuzz(15)).to match '1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz'
    expect(solver.fizzbuzz(18)).to match '1 2 fizz 4 buzz fizz 7 8 fizz buzz 11 fizz 13 14 fizzbuzz 16 17 fizz'
    expect(solver.fizzbuzz(3)).to match '1 2 fizz'
  end
end
