require 'spec_helper'

describe Bags do

  let (:test_bags) { Bags.new}

  it "initializes each nested bag hash" do
    test_bags.all.should == {}
  end

  it "replaces the empty space in a string with a _" do 
    test_bags.replace("gym bag", "_").should == "gym bag"
  end

  it "adds a gym and beach bag" do
    test_bags.add("gym bag", "beach bag").should == { :gym_bag=>{}, :beach_bag=>{} }
  end

  it "adds flip flops to the beach bag" do
    test_bags.add_flip_flops

    expext(test_bags.all).to eq({:gym_bag=>{}, :beach_bag=>{:shoes=>"Flip Flops"}})
  end

  it "adds nikes to the gym bag" do 
    test_bags.add_nikes 

    expext(test_bags.all).to eq({:gym_bag=>{:shoes=>"Nikes"}, :beach_bag=>{}})
  end
end