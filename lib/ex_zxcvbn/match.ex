defmodule ExZxcvbn.Match do
  @moduledoc """
  Represents a match.
  """

  defstruct [
    :pattern,
    :begin,
    :end,
    :token,
    :matched_word,
    :rank,
    :dictionary_name,
    :reversed,
    :l33t
  ]

  @type t :: %__MODULE__{
          pattern: String.t(),
          begin: non_neg_integer(),
          end: non_neg_integer(),
          token: String.t(),
          matched_word: String.t(),
          rank: non_neg_integer(),
          dictionary_name: String.t(),
          reversed: boolean(),
          l33t: false
        }
end
