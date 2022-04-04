# frozen_string_literal: true

RSpec.describe Array do
  it 'updates length depending on content' do
    expect(subject.length).to eq 0
    subject.push('an element')
    expect(subject.length).to eq 1
  end
end
