defmodule Case do
  def pascalcase([]) do
    ""
  end

  def pascalcase([h|t]) do
    words = Regex.scan(~r/([A-Z]|^)[^A-Z]+/, h)
    |> Enum.map(&(List.first &1))
    p = if length(words) >= 2 do
      pascalcase words
    else
      String.capitalize h
    end
    p <> pascalcase t
  end

  def pascalcase(str) do
    Regex.scan(~r/[a-zA-Z0-9]+/u, str)
    |> Enum.map(&(List.first &1))
    |> pascalcase
  end
end
