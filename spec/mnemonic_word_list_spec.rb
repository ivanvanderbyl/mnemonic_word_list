require 'spec_helper'

describe "Word List" do
  describe ".all" do
    subject(:all) { MnemonicWordList.all }
    it "returns an array of all words" do
      expect(all).to be_a(Array)
    end

    it "contains all the words" do
      expect(all.size).to eq 1633
    end
  end

  describe ".random_pair" do
    subject { MnemonicWordList.random_pair }

    it "returns a random two word string" do
      expect(subject.split(' ').size).to eq 2
      subject.split(' ').each { |word| expect(word).to be_a String }
    end
  end
end
