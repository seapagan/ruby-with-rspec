RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it "has a lenth of 2" do
    expect(sally.length).to  eq 2
    sally.pop()
    expect(sally.length).to  eq 1
  end

  it "is equal to [1,2]" do
    expect(subject).to  eq [1,2]
  end
end
