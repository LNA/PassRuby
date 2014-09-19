require 'spec_helper'

# Red:      Write a failing test. Each test is already written for you.

# Green:    Write the least amount of code to make the test pass.

# Refactor: We are going to start off by removing duplication and hard coded values.

describe List do
  let (:list) { List.new }

  it "has a title" do
    expect(list.title).to eq ("To Do List")
  end
end
