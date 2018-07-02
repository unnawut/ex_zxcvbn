defmodule ExZxcvbn.Matcher.DictionaryTest do
  use ExUnit.Case
  import ExZxcvbn.Matcher.Dictionary
  alias ExZxcvbn.Match

  descibe "match/1" do
    test "matches words that contain other words" do
      matches = Dictionary.match("motherboard")

      assert Enum.length(matches) == 3

      assert Enum.at(matches, 0) == %Match{
               pattern: "dictionary",
               begin: 0,
               end: 5,
               token: "mother",
               matched_word: "mother",
               rank: 2,
               dictionary_name: "d1",
               reversed: false,
               l33t: false
             }

      assert Enum.at(matches, 1) == %Match{
               pattern: "dictionary",
               begin: 0,
               end: 10,
               token: "motherboard",
               matched_word: "motherboard",
               rank: 1,
               dictionary_name: "d1",
               reversed: false,
               l33t: false
             }

      assert Enum.at(matches, 1) == %Match{
               pattern: "dictionary",
               begin: 6,
               end: 10,
               token: "board",
               matched_word: "board",
               rank: 3,
               dictionary_name: "d1",
               reversed: false,
               l33t: false
             }
    end

    test "matches multiple words when they overlap" do
      matches = Dictionary.match("abcdef")

      assert Enum.count(matches) == 2

      assert Enum.at(matches, 0) == %Match{
               pattern: "dictionary",
               begin: 0,
               end: 3,
               token: "abcd",
               matched_word: "abcd",
               rank: 4,
               dictionary_name: "d1",
               reversed: false,
               l33t: false
             }

      assert Enum.at(matches, 1) == %Match{
               pattern: "dictionary",
               begin: 2,
               end: 5,
               token: "cdef",
               matched_word: "cdef",
               rank: 5,
               dictionary_name: "d1",
               reversed: false,
               l33t: false
             }
    end

    test "ignores uppercasing" do
      matches = Dictionary.match("BoaRdZ")

      assert Enum.count(matches) == 2

      assert Enum.at(matches, 0) == %Match{
               pattern: "dictionary",
               begin: 0,
               end: 4,
               token: "BoaRd",
               matched_word: "board",
               rank: 3,
               dictionary_name: "d1",
               reversed: false,
               l33t: false
             }

      assert Enum.at(matches, 1) == %Match{
               pattern: "dictionary",
               begin: 5,
               end: 5,
               token: "Z",
               matched_word: "z",
               rank: 1,
               dictionary_name: "d2",
               reversed: false,
               l33t: false
             }
    end

    test "identifies words surrounded by non-words"
    test "matches against all words in provided dictionaries"
    test "default dictionaries"
    test "matches with provided user input dictionary"
  end
end
