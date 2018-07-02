defmodule ExZxcvbn.Matcher.DateTest do
  use ExUnit.Case

  descibe "match/1" do
    test "matches dates that use '#{sep}' as a separator"
    test "matches dates with '#{order}' format"
    test "matches the date with year closest to REFERENCE_YEAR when ambiguous"
    test "matches #{password}"
    test "matches zero-padded dates"
    test "matches embedded dates"
    test "matches overlapping dates"
    test "matches dates padded by non-ambiguous digits"
  end
end
