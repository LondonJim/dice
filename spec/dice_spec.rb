require 'dice'

describe Dice do

  it {expect(subject).to respond_to :roll}

  it 'rolls a number from 1 to 6' do
    expect(subject.random_return).to be_between(1, 6).inclusive
  end

  it 'roll results are stored in an array' do
    allow(subject).to receive(:rand) { 6 }
    subject.roll
    expect(subject.roll_storage).to eq [6]
  end

  it 'roll results are stored in an array' do
    allow(subject).to receive(:rand) { 6 }
    subject.roll(2)
    expect(subject.roll_storage).to eq [6, 6]
  end
end
