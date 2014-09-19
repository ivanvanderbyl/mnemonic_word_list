require "mnemonic_word_list/version"

module MnemonicWordList
  def self.all
    File.open(word_list_path) do |file|
      file.reduce([]) do |list, line|
        words = line.split(/\s+/).map { |word| word.strip unless word.empty? }.compact
        list.concat(words)
      end
    end
  end

  def self.random_pair(separator = '-')
    list = all
    [list.sample, list.sample].join(separator)
  end

  def self.word_list_path
    File.expand_path("../mnemonic_word_list/wordlist.txt", __FILE__)
  end
end
