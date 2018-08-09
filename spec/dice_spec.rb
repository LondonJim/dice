require 'dice'

describe Dice do
  it {expect(subject).to respond_to :roll}

  it 'rolls a number from 1 to 6' do
  expect(subject.roll).to be_between(1, 6).inclusive
  end
end
