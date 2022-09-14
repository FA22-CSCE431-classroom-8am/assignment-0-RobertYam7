# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'To Kill a Mockingbird')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(author: 'Harper Lee')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without an author' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(price: 7)
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a price' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(date: '9-13-2022')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a date' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end