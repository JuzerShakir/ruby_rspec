require 'rspec'
require_relative 'animal'

RSpec.describe Animal do

  describe '#leg' do
    it 'returns number of legs' do
      expect(subject.legs).to eql(4)
    end
  end

  describe Dog do
    describe '#bark' do
      it "sounds like 'Woof!'" do
        expect(subject.bark).to eql('Woof!')
      end
    end

    describe '#hungry?' do
      context 'when hunger_level is greater than 5' do
        subject { described_class.new(hunger_level: 6) }
        it 'returns true' do
          expect(subject).to be_hungry
        end
      end

      context 'when hunger_level is less than 5' do
        subject { described_class.new(hunger_level: 5) }
        it 'returns false' do
          expect(subject).to_not be_hungry
        end
      end
    end

    describe '#feed' do
      context 'when the dog is hungry' do
        subject { described_class.new(hunger_level: 6) }
        it 'is no longer hungry' do
          subject.feed
          expect(subject).to_not be_hungry
        end
      end
    end

    describe '#color' do
      color = 'white'
      subject { described_class.new(color: color) }
      it 'returns color of the dog' do
        expect(subject.color).to eql(color)
      end
    end
=begin
    describe '#leg' do
      it 'returns number of legs' do
        expect(subject.legs).to eql(4)
      end
    end
=end
  end
end
