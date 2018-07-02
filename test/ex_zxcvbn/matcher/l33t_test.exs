defmodule ExZxcvbn.Matcher.L33tTest do
  use ExUnit.Case

  descibe "match/1" do
    test "reduces l33t table to only the substitutions that a password might be employing"
    test "enumerates the different sets of l33t substitutions a password might be using"
    test "doesn't match empty string"
    test "doesn't match pure dictionary words"
    test "matches against common l33t substitutions"
    test "matches against overlapping l33t patterns"
    test "doesn't match when multiple l33t substitutions are needed for the same letter"
    test "doesn't match single-character l33ted words"
    test "doesn't match with subsets of possible l33t substitutions"
  end
end
