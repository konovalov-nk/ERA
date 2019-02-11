RSpec.describe 'MaxDistance' do
  subject { ERA::Arrays::MaxDistance.new }

  it 'returns 2 for [3, 5, 4, 2]' do
    expect(subject.solution([3, 5, 4, 2])).to eq(2)
  end

  it 'returns 3 for [3, 5, 4, 4]' do
    expect(subject.solution([3, 5, 4, 4])).to eq(3)
  end

  it 'returns 3 for [-3, -5, -4, -2]' do
    expect(subject.solution([-3, -5, -4, -2])).to eq(3)
  end

  it 'returns 4 for [-3, -4, -5, -4, -2]' do
    expect(subject.solution([-3, -4, -5, -4, -2])).to eq(4)
  end

  it 'returns 0 for [1]' do
    expect(subject.solution([1])).to eq(0)
  end

  it 'returns 6 for [461, 93, 665, 945, 673, 627, 87, 186, 76]' do
    expect(subject.solution([461, 93, 665, 945, 673, 627, 87, 186, 76])).to eq(6)
  end

  describe 'edge cases' do
    it 'returns -1 for nil input' do
      expect(subject.solution(nil)).to eq(-1)
    end
  end
end
