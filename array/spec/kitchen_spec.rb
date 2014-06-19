require 'spec_helper'

describe Kitchen do
  let (:kitchen) {Kitchen.new}

  it "initializes with an empty items array" do
    kitchen.items.should == []
  end

  it "uses the shovel operator to add a stove to the kitchen" do
    kitchen.add("stove") == ["stove"]
  end

  it "returns the first and last emements of the array" do
    kitchen.add("stove")
    kitchen.add("cat")
    kitchen.add("sink")
    kitchen.remove_first_and_last_elements

    kitchen.items.should == ["cat"]
  end

  it "adds and ! to the end of all of its items" do
    kitchen.add("stove")
    kitchen.add("windows")
    kitchen.add_bang

    kitchen.items.should == ["stove!", "windows!"]
  end

  it "removes items that don't belong in the kitchen" do
    kitchen.remove_with_slice(["stove", "rat", "shoe", "pan"]).should == ["stove, pan"]
  end

  it "creates arrays out of each element" do
    kitchen.make_mini_arrays(["stove", "windows"]).should == [["stove"], ["windows"]]
  end

  it "removes any item with more than 3 letters in its name from the kitchen" do
    kitchen.remove_if_more_than_three_letters(["windows", "cat", "stove", "pan", "scarf"]).should == ["cat", "pan"]
  end

  it "sorts each item alphabetically backwards " do
    kitchen.alphabetically_backwards(["apple", "cat", "window", "pan"]).should == ["window", "pan","cat", "apple"]
  end

  it "returns the first 3 items in the kitchen" do
    kitchen.first_three(["cake", "cat", "kale", "pan"]).should == ["cake", "cat", "kale"]
  end
end