require 'rails_helper'

RSpec.describe Quest, type: :model do
  it "is valid with a title" do
    quest = Quest.new(title: "Learn Rails", done: false)
    expect(quest).to be_valid
  end

  it "is invalid without a title" do
    quest = Quest.new(title: nil, done: false)
    expect(quest).to_not be_valid
  end
end
