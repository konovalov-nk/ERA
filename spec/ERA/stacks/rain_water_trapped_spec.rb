RSpec.describe 'RainWaterTrapped' do
  subject { ERA::Stacks::RainWaterTrapped.new }

  it 'returns 6 for [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]' do
    expect(subject.solution([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1])).to eq(6)
  end

  describe 'general cases' do
    it 'works with positive-only values' do
      expect(subject.solution([3, 2, 1, 2, 3])).to eq(4)
    end

    it 'works with negative-only values' do
      expect(subject.solution([-1, -2, -3, -2, -3])).to eq(1)
    end

    it 'works with both negative and positive values' do
      expect(subject.solution([1, 2, -3, 2, 1])).to eq(5)
    end
  end

  describe 'edge cases' do
    it 'returns 0 for empty array' do
      expect(subject.solution([])).to eq(0)
    end
  end

end
