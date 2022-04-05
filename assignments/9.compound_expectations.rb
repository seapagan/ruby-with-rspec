# frozen_string_literal: true

RSpec.describe 'firetruck' do
  it 'starts with fire and ends with truck' do
    expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it 'is even and responds to the times method' do
    expect(subject).to be_even.and respond_to(:times)
  end
end

RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'includes 42 and starts with [4, 8, 15]' do
    expect(subject).to include(42).and start_with([4, 8, 15])
  end
end
