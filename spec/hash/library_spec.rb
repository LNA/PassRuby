require 'spec_helper'

describe Library do
  let (:my_library)       { Library.new }
  let (:funny_book)       { Book.new }
  let (:blue_book)        { Book.new }
  let (:bulls_hat)        { Hat.new }

  context '#initialize' do
    it "initializes with empty records" do
      expect(my_library.records).to eq({})
    end

    it "should initialize with an id" do
      expect(my_library.id).to eq 1
    end
  end

  context '#save' do
    it "saves an item with an id" do
      my_library.save(funny_book)

      expect(my_library.records[1]).to eq funny_book
    end

    it 'sets the id on the book that it saves' do
      my_library.save(funny_book)

      expect(my_library.records[1].id).to eq funny_book.id
    end

    it 'increments the id by 1 after saving an item' do
      my_library.save(funny_book)
      my_library.save(blue_book)

      expect(my_library.records[2].id).to eq blue_book.id
    end

    it 'can save more than one item' do
      my_library.save(funny_book)
      my_library.save(blue_book)
      my_library.save(bulls_hat)

      expect(my_library.records[3]).to eq bulls_hat
    end
  end

  context '#all' do
    it 'returns all items' do
      my_library.save(funny_book)
      my_library.save(bulls_hat)

      expect(my_library.all).to eq [funny_book, bulls_hat]
    end

    it 'returns an empty array if it has no items' do
      expect(my_library.all).to eq []
    end
  end

  context '#find_by_id' do
    it 'finds a record by the id' do
      my_library.save(funny_book)
      my_library.save(bulls_hat)

      expect(my_library.find_by_id(2)).to eq bulls_hat
    end
  end

  context '#delete_by_id' do
    it 'deletes an item' do
      my_library.save(funny_book)
      my_library.save(bulls_hat)
      my_library.delete_by_id(1)

      expect(my_library.all).to eq [bulls_hat]
    end
  end
end
