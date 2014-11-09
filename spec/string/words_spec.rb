require 'spec_helper'

describe Words do
  let (:words) { Words.new }

  it "converts a number to a string" do
    number = 1

    expect(words.convert_to_string(number)).to eq "1"
  end

  it "uses the times operator to say 'Hi' three times" do
    expect(words.say_hi_three_times).to eq "Hi Hi Hi "
  end

  it "uses times do to say 'Hi' three times" do
    expect(words.times_do_say_hi).to eq "Hi Hi Hi"
  end

  it "concatonates two string by using the shovel operator" do
    string1 = "I live"
    string2 = "in Chicago"

    expect(words.combine_two_strings(string1, string2)).to eq
  end
end
