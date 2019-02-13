RSpec.describe 'MaxSumContiguousSubarray' do
  subject { ERA::Arrays::MaxSumContiguousSubarray.new }

  it 'returns 6 for [-2, 1, -3, 4, -1, 2, 1, -5, 4]' do
    expect(subject.solution([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to eq(6)
  end

  describe 'general cases' do
    it 'works with positive-only values' do
      expect(subject.solution([1, 2, 3, 2, 1])).to eq(9)
    end

    it 'works with negative-only values' do
      expect(subject.solution([-1, -2, -3, -2, -1])).to eq(-1)
    end

    it 'works with both negative and positive values' do
      expect(subject.solution([1, 2, -3, 2, 1])).to eq(3)
    end
  end

  describe 'edge cases' do
    it 'works with left edge' do
      expect(subject.solution([100, -2, -3, 1])).to eq(100)
    end

    it 'works with right edge' do
      expect(subject.solution([1, -3, -2, 100])).to eq(100)
    end

    it 'returns nil for empty array' do
      expect(subject.solution([])).to eq(nil)
    end
  end

end
