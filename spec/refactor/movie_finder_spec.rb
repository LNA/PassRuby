require 'spec_helper'

# Red:      Write a failing test. Each test is already written for you.

# Green:    Write the least amount of code to make the test pass; thats done too.

# Refactor: We are going to be removing code smells..

describe MovieFinder do
  let (:finder) { MovieFinder.new }

  it "retuns a movie category when given a day." do 
    expect(finder.find_movie("Wednesday")).to eq ("Drama")
  end

  it "refactors code to do get rid of all of those pesky conditionals and hard coded values." do 
    expect(finder.find_movie_refactored("Wednesday")).to eq ("Drama")
  end

  it "gets the name of the movie and calculates the streaming download cost" do 
    expect(finder.get_title_and_cost("Kids")).to eq(["The Princess Bride", 3.00])
  end

  it "refactors out a method to get a name" do 
    expect(finder.get_title("Kids")).to eq("The Princess Bride")
  end

  it "refactors out a method to get the cost of a movie" do 
    expect(finder.get_cost("Kids")).to eq(3.00)
  end

  it "returns a hash of the movie and its cost when given a genera" do 
    expect(finder.my_streaming_history["Kids"]).to eq({"The Princess Bride" => 3.00})
  end
end 