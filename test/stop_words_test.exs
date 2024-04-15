defmodule StopWordsTest do
  use ExUnit.Case

  test "generates functions" do
    assert StopWords.pl() |> Enum.take(5) == ["a", "aby", "ach", "acz", "aczkolwiek"]
    assert StopWords.en() |> Enum.take(5) == ["'ll", "'tis", "'twas", "'ve", "10"]
  end

  test "allows to get by iso code" do
    assert StopWords.get("pl") |> Enum.take(5) == ["a", "aby", "ach", "acz", "aczkolwiek"]
    assert StopWords.get("en") |> Enum.take(5) == ["'ll", "'tis", "'twas", "'ve", "10"]
  end

  test "retruns all supported iso code" do
    assert StopWords.languages() |> Enum.take(5) == [:af, :ar, :bg, :bn, :br]
  end
end
