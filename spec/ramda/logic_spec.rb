require 'spec_helper'

describe Ramda::Logic do
  let(:r) { described_class }

  it '#allPass' do
    is_queen = R.prop_eq(:rank, 'Queen')
    is_spade = R.prop_eq(:suit, 'Spade')

    is_queen_of_spades = r.all_pass(is_queen, is_spade)

    expect(is_queen_of_spades.call(rank: 'King', suit: 'Spade')).to be_falsey
    expect(is_queen_of_spades.call(rank: 'Queen', suit: 'Spade')).to be_truthy
  end

  it '#and' do
    expect(r.and(true, true)).to be_truthy
    expect(r.and(true, false)).to be_falsey
    expect(r.and(false, true)).to be_falsey
    expect(r.and(false, false)).to be_falsey
  end

  it '#any_pass' do
    is_club = R.prop_eq(:suit, 'club')
    is_spade = R.prop_eq(:suit, 'spade')
    is_black_card = r.any_pass(is_club, is_spade)

    expect(is_black_card.call(rank: '10', suit: 'club')).to be_truthy
    expect(is_black_card.call(rank: 'Q', suit: 'spade')).to be_truthy
    expect(is_black_card.call(rank: 'Q', suit: 'diamond')).to be_falsey
  end
end