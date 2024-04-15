defmodule StopWords.MixProject do
  use Mix.Project

  def project do
    [
      app: :stop_words,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  defp description do
    "returns stop words for the given language"
  end

  defp package do
    [
      # These are the default files included in the package
      files: [
        "lib",
        "mix.exs",
        "README*",
        "priv/stopwords-iso.json"
      ],
      licenses: ["Apache-2.0", "MIT"],
      links: %{
        "GitHub" => "https://github.com/dkuku/stop_words",
        "Original project homepage" => "https://github.com/stopwords-iso/stopwords-iso"
      }
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:jason, "~> 1.4", runtime: false},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end
end
