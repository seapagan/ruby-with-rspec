# frozen_string_literal: true

RSpec.describe 'doubles_1' do
  it "tests the student's knowledge of the course's content" do
    # For each question, write the code that should go here
    db = double('Database Connection')
    allow(db).to receive_messages(connect: true, disconnect: 'Goodbye')
    expect(db.connect).to eq true
    expect(db.disconnect).to eq 'Goodbye'
  end
end

RSpec.describe 'doubles_2' do
  it "tests the student's knowledge of the course's content" do
    # For each question, write the code that should go here
    fs = double('File System')
    allow(fs).to receive(:read).and_return 'Romeo and Juliet'
    allow(fs).to receive(:write).and_return false
    expect(fs.read).to eq 'Romeo and Juliet'
    expect(fs.write).to eq false
  end
end
