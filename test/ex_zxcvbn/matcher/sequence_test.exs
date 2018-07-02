defmodule ExZxcvbn.Matcher.SequenceTest do
  use ExUnit.Case

  descibe "match/1" do
    test "doesn't match length-#{password.length} sequences"
    test "matches overlapping patterns"
    test "matches embedded sequence patterns #{password}"
    test "matches '#{pattern}' as a '#{name}' sequence"
  end
end
