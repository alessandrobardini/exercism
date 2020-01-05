defmodule WordCount do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    Enum.reduce(words_from(sentence), %{}, fn(x, acc) -> Map.update(acc, x, 1, &(&1 + 1)) end)
  end

  defp words_from(sentence) do
    Regex.scan(~r/[[:alnum:]-]+/iu, String.downcase(sentence)) 
    |> Enum.map(&(Enum.at(&1, 0)))
  end
end
