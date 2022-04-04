# frozen_string_literal: true

RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for a substring at the begining or end' do
      # NOTE: the match is case sensitive
      expect(subject).to start_with 'cat'
      expect(subject).to end_with 'pillar'

      expect(subject.upcase).to start_with 'CAT'
    end

    it { is_expected.to start_with 'cat' }
    it { is_expected.to end_with 'pillar' }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at the beginning or end of the array' do
      expect(subject).to start_with :a
      expect(subject).to start_with :a, :b
      expect(subject).to start_with :a, :b, :c

      expect(subject).to end_with :d
      expect(subject).to end_with :c, :d
      expect(subject).to end_with :b, :c, :d

      expect(subject).not_to end_with :b
    end

    it { is_expected.to start_with :a }
    it { is_expected.to end_with :c, :d }
  end
end
