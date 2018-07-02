defmodule ExZxcvbn.Matcher.SpatialTest do
  use ExUnit.Case

  descibe "match/1" do
    test "doesn't match 1- and 2-character spatial patterns"
    test "matches against spatial patterns surrounded by non-spatial patterns"
    test "matches '#{pattern}' as a #{keyboard} pattern"
  end
end
