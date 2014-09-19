require 'spec_helper'

# Red:      Write a failing test. Each test is already written for you.

# Green:    Write the least amount of code to make the test pass; thats done too.

# Refactor: We are going to be removing conditionals, duplication, and hard coded values.

describe MovieFinder do
  let (:finder) { MovieFinder.new }

  it "retuns a movie category when given a day." do 
    expect(finder.find_movie("Wednesday")).to eq ("Drama")
  end

  it "refactors code to do get rid of all of those pesky conditionals" do 
    expect(finder.find_movie_refactored("Wednesday")).to eq ("Drama")
  end
end 