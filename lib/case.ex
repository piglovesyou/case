defmodule Case do
  def pascalcase([]) do
    ""
  end

  def pascalcase([h|t]) do
    part = String.downcase(h) |> String.capitalize
    part <> pascalcase(t)
  end

  def pascalcase(str) do
    Regex.scan(~r/[a-zA-Z0-9]+/, str)
    |> Enum.map(&(List.first &1))
    |> pascalcase
  end
end
