RSpec.describe 'Maxspprod' do
  subject { ERA::Arrays::Maxspprod.new }

  it 'returns 15 for [3, 6, 8, 9, 2, 4]' do
    expect(subject.solution([3, 6, 8, 9, 2, 4])).to eq(15)
  end

  it 'returns 63 for [3, 2, 3, 1, 4, 5, 6, 8, 7, 9]' do
    expect(subject.solution([3, 2, 3, 1, 4, 5, 6, 8, 7, 9])).to eq(63)
  end

  describe 'edge cases' do
    it 'returns 0 for inputs with lengths less than of 4' do
      expect(subject.solution([1, 2, 3])).to eq(0)
      expect(subject.solution([1, 2])).to eq(0)
      expect(subject.solution([1])).to eq(0)
      expect(subject.solution([])).to eq(0)
    end

    it 'returns 0 for nil input' do
      expect(subject.solution(nil)).to eq(0)
    end
  end
end
