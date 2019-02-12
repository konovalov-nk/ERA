RSpec.describe 'RepeatAndMissingNumberArray' do
  subject { ERA::Arrays::RepeatAndMissingNumberArray.new }

  it 'returns [3, 4] for [3, 1, 2, 5, 3]' do
    expect(subject.solution([3, 1, 2, 5, 3])).to eq([3, 4])
  end

  it 'returns [1, 2] for [1, 1]' do
    expect(subject.solution([1, 1])).to eq([1, 2])
  end

  describe 'edge cases' do
    it 'returns [0, 0] for [1]' do
      expect(subject.solution([1])).to eq([0, 0])
    end

    it 'returns [0, 0] for []' do
      expect(subject.solution([])).to eq([0, 0])
    end

    it 'returns -1 for nil input' do
      expect(subject.solution(nil)).to eq(-1)
    end
  end
end
