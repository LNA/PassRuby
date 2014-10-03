require 'spec_helper'

describe Equality do   
  let (:test_equality) {Equality.new}
  let (:a)             { ["green", "eggs", "and", "ham"] }
  let (:b)             { ["green", "ham", "eggs", "and"] }

  it "gives true if two arrays are the same after being sorted" do 
    expect(test_equality.are_sorted_the_same(a, b)).to eq true
  end

  it "gives true if two arrays are equal sets" do 
    expect(test_equality.are_of_the_same_set(a,b)).to eq true
  end

  it "gives true if two arrays are the same...without using sort or set" do 
    expect(recursive_equality.are_of_the_same_set(a,b)).to eq true
  end
end