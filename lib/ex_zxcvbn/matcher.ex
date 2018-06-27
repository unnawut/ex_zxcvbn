defmodule ExZxcvbn.Matcher do
  @moduledoc """
  Password matcher.
  """

  @graphs %{
    qwerty: [],
    dvorak: [],
    keypad: [],
    mac_keypad: []
  }

  @l33t_table %{
    "a" => ["4", "@"],
    "b" => ["8"],
    "c" => ["(", "{", "[", "<"],
    "e" => ["3"],
    "g" => ["6", "9"],
    "i" => ["1", "!", "|"],
    "l" => ["1", "|", "7"],
    "o" => ["0"],
    "s" => ["$", "5"],
    "t" => ["+", "7"],
    "x" => ["%"],
    "z" => ["2"]
  }

  @regex_patterns %{
    recent_years: ~r/19\d\d|200\d|201\d/
  }

  @date_max_years 2050
  @date_min_years 1000

  @date_splits %{
    # for length-4 strings, eg 1191 or 9111, two ways to split:
    "4" => [
      # 1 1 91 (2nd split starts at index 1, 3rd at index 2)
      [1, 2],
      # 91 1 1
      [2, 3]
    ],
    "5" => [
      # 1 11 91
      [1, 3],
      # 11 1 91
      [2, 3]
    ],
    "6" => [
      # 1 1 1991
      [1, 2],
      # 11 11 91
      [2, 4],
      # 1991 1 1
      [4, 5]
    ],
    "7" => [
      # 1 11 1991
      [1, 3],
      # 11 1 1991
      [2, 3],
      # 1991 1 11
      [4, 5],
      # 1991 11 1
      [4, 6]
    ],
    "8" => [
      # 11 11 1991
      [2, 4],
      # 1991 11 11
      [4, 6]
    ]
  }

  def omnimatch(password) do
    dictionary_match()
    reverse_dictionary_match()
    l33t_match()
    spational_match()
    sequential_match()
    regex_match()
    date_match()
  end

  @doc """
  Dictionary match (common passwords, english, last names, etc).
  """
  def dictionary_match(password) do
  end

  @doc """
  Dictionary match (common passwords, english, last names, etc) but revered.
  """
  def reverse_dictionary_match(password) do
  end

  @doc """
  Dictionary match with common l33t substitutions.
  """
  def l33t_match(password) do
  end

  @doc """
  Spatial match (qwerty/dvorak/keypad).
  """
  def spatial_match(password) do
  end

  @doc """
  Repeats (aaa, abcabcabc) and sequences (abcdef).
  """
  def repeat_match(password) do
  end

  @doc """
  Sequential matching.
  """
  def sequence_match(password) do
  end

  @doc """
  Regex matching.
  """
  def regex_match(password) do
  end

  @doc """
  Date matching.
  """
  def date_match(password) do
  end
end
