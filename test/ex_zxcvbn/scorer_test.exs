defmodule ExZxcvbn.ScorerTest do
  describe "nCk/2" do
    test "nCk(#{n}, #{k}) == #{result}"
    test "mirror identity"
    test "pascal's triangle identity"
  end

  describe "log10/1" do
    test "log10(#{n}) == #{result}"
    test "product rule"
    test "quotient rule"
    test "base switch rule"
    test "power rule"
    test "base change rule"
  end

  describe "log2/1" do
    test "log2(#{n}) == #{result}"
  end

  describe "most_guessable_match_sequence/3" do
    test "returns one bruteforce match given an empty match sequence: #{s}"
    test "returns match + bruteforce when match covers a prefix of password: #{s}"
    test "returns bruteforce + match when match covers a suffix: #{s}"
    test "returns bruteforce + match + bruteforce when match covers an infix: #{s}"
    test "chooses lower-guesses match given two matches of the same span: #{s}"
    test "when m0 covers m1 and m2, chooses [m0] when m0 < m1 * m2 * fact(2): #{s}"
    test "when m0 covers m1 and m2, chooses [m1, m2] when m0 > m1 * m2 * fact(2): #{s}"
  end

  describe "estimate_guesses/2" do
    test "returns cached guesses when available"
    test "delegates based on pattern"
  end

  describe "bruteforce_guesses/1" do

  end

  describe "repeat_guesses/1" do
    test "the repeat pattern '#{token}' has guesses of #{expected_guesses}"
  end

  describe "sequence_guesses/1" do
    test "the sequence pattern '#{token}' has guesses of #{guesses}"
  end

  describe "regex_guesses/1" do
    test "guesses of 26^7 for 7-char lowercase regex"
    test "guesses of 62^5 for 5-char alphanumeric regex"
    test "guesses of |year - REFERENCE_YEAR| for distant year matches"
    test "guesses of MIN_YEAR_SPACE for a year close to REFERENCE_YEAR"
  end

  describe "date_guesses/1" do
    test "guesses for #{match.token} is 365 * distance_from_ref_year"
    test "recent years assume MIN_YEAR_SPACE. extra guesses are added for separators."
  end

  describe "spatial_guesses/1" do
    test "with no turns or shifts, guesses is starts * degree * (len-1)"
    test "guesses is added for shifted keys, similar to capitals in dictionary matching"
    test "when everything is shifted, guesses are doubled"
    test "spatial guesses accounts for turn positions, directions and starting keys"
  end

  describe "dictionary_guesses/1" do
    test "base guesses == the rank"
    test "extra guesses are added for capitalization"
    test "guesses are doubled when word is reversed"
    test "extra guesses are added for common l33t substitutions"
    test "extra guesses are added for both capitalization and common l33t substitutions"
  end

  describe "uppercase_variations/1" do
    test "guess multiplier of #{word} is #{variants}"
  end

  describe "l33t_variations/1" do
    test "1 variant for non-l33t matches"
    test "extra l33t guesses of #{word} is #{variants}"
    test "capitalization doesn't affect extra l33t guesses calc"
  end
end
