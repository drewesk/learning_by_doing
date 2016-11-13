require 'rspec'
require './lib/glass_torch'

describe GlassTorch do
  let(:glasstorch) { GlassTorch.new }

  it 'has been created' do
    expect(glasstorch).to be_a(GlassTorch)
  end

  describe '#initialize' do
    it 'sets lowest temp of the flame to 800 deg' do
      expect(glasstorch.flame_temperature).to eq(800)
    end
  end
  describe '#increase_temperature' do
    before(:each) do
      glasstorch.increase_temperature(500)
      expect(glasstorch.flame_temperature).to eq(1300)
    end
    context 'when flame temp is increased' do
      it 'increases total temp of the flame and limits to 2000deg max' do
        glasstorch.increase_temperature(1000)
        expect(glasstorch.flame_temperature).to eq(2000)
      end
    end
    context 'when flame temp is decreased' do
      it 'decreases total temp of the flame and limits to 800deg min' do
        glasstorch.decrease_temperature(300)
        expect(glasstorch.flame_temperature).to eq(1000)
        glasstorch.decrease_temperature(300)
        expect(glasstorch.flame_temperature).to eq(800)
      end
    end
  end
end
