defmodule ExZxcvbn.Matcher.RepeatTest do
  use ExUnit.Case

  descibe "match/1" do
    test "doesn't match length-#{password.length} repeat patterns"
    test "matches embedded repeat patterns"
    test "matches repeats with base character '#{chr}'"
    test "matches multiple adjacent repeats"
    test "matches multiple repeats with non-repeats in-between"
    test "matches multi-character repeat pattern"
    test "matches aabaab as a repeat instead of the aa prefix"
    test "identifies ab as repeat string, even though abab is also repeated"
  end
end
