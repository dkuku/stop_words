# StopWords
based on [stopwords-iso](https://github.com/stopwords-iso/stopwords-iso)

Allows to get a list of stop words for a given language

```elixir
iex> Stopwords.pl()
iex> Stopwords.get(:pl)
iex> Stopwords.get("pl")
```

All supported languages:

```elixir
iex> Stopwords.languages()
```

You can configure the list of supported languages by setting the "include" or "exclude" config keys. It accepts a single atom or a list of atoms.

```elixir
config :stop_words,
    include: :pl
```
or

```elixir
config :stop_words,
    exclude: [:pl, :en]
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `stop_words` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:stop_words, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/stop_words>.

