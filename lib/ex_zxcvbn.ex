defmodule ExZxcvbn do
  @moduledoc """
  Documentation for ExZxcvbn.
  """

  @doc """
  Estimates the strength of the given password.
  """
  @spec estimate(String.t(), list())
  def estimate(password, extra_inputs(/ / [])) do
    # start = time()

    extra_inputs = sanitize(extra_inputs)

    # set user dictionary with extra_inputs

    # matches = Matching.omnimatch(password)

    # result = scoring.most_guessable_match_sequence password, matches

    # result.calc_time = time() - start

    # attack_times = time_estimates.estimate_attack_times result.guesses
    # for prop, val of attack_times
    # result[prop] = val

    # result.feedback = feedback.get_feedback result.score, result.sequence
  end

  defp sanitize(inputs) when is_list(inputs) do
    Enum.reduce(inputs, [], fn input, acc ->
      case sanitize(input) do
        nil ->
          acc

        sanitized ->
          [sanitized | acc]
      end
    end)
  end

  defp sanitize(input) when is_binary(input), do: String.downcase(input)

  defp sanitize(input) when is_number(input), do: to_string(input)

  defp sanitize(input) when is_boolean(input), do: to_string(input)

  defp sanitize(_), do: nil
end
