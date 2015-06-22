require 'rails_helper'

RSpec.describe User, type: :model do


  context 'No Swat Options' do
    init_tw

    it 'should have Users' do
      expect(User.count).to eq(0)
    end

  end

  context 'John created' do
    init_tw( john: true )

    it 'should have Users' do

      expect(User.count).to eq(1)
      john = User.where(email: 'john.smith@gmail.com').take
      expect(john.full_name).to eq('John Smith')
    end

  end

  context 'John & Josh' do
    init_tw( john: true, josh: true )

    it 'should have Users' do
      expect(User.all.map(&:full_name)).to eq([ 'John Smith', 'Josh Doe' ])
    end
  end

  context 'Methods' do
    init_tw

    it 'should call Test World methods' do
      @tw.some_very_specific_logic
    end

  end

end
