require 'rails_helper'

RSpec.describe News, type: :model do
  subject {
    described_class.new(
      title: "Anythink",
      description: "Anythink"
    )
  }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with not title attributes' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with not description attributes' do
    subject.description = nil
    expect(subject).to_not be_valid
  end
end
