require 'spec_helper'
 
describe Bags do
 
  let (:test_bags) { Bags.new}
 
  it "initializes each nested bag hash" do
    expect(test_bags.all).to eq({})
  end
 
  it "replaces the empty space in a string with a _" do 
    expect(test_bags.replace("gym bag", "_")).to eq("gym bag")
  end
 
  it "adds a gym and beach bag" do
    expect(test_bags.add("gym bag", "beach bag")).to eq({:gym_bag=>{}, :beach_bag=>{} })
  end
 
  it "adds flip flops to the beach bag" do
    test_bags.add_flip_flops
 
    expext(test_bags.all).to eq({:gym_bag=>{}, :beach_bag=>{:shoes=>"Flip Flops"}})
  end
 
  it "adds nikes to the gym bag" do 
    test_bags.add_nikes 
 
    expext(test_bags.all).to eq({:gym_bag=>{:shoes=>"Nikes"}, :beach_bag=>{}})
  end
 
  it "converts an array into a nested hash" do 
    expect(test_bags.convert_to_nested_hash(
      ['gym bag', 'beach bag', 'book bag'])).to eq({"gym bag"=>{:books=>0}, 
                                                    "beach bag"=>{:books=>1}, 
                                                    "book bag"=>{:books=>2}})
  end
 
  it "merges 2 nested hashes" do 
    first  = {:title=>"Harvard Psychedelic Club", :author=>"Don Lattin"}
    second = {:recommended_by=>"Erin"}
    
    expect(test_bags.merge_these(first, second)).to eq({:title=>"Harvard Psychedelic Club", 
                                                   :author=>"Don Lattin", 
                                                   :recommended_by=>"Erin"})
  end
end
