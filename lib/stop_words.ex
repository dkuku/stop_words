defmodule StopWords do
  @mapping :stop_words
           |> Application.app_dir()
           |> Kernel.<>("/priv/stopwords-iso.json")
           |> File.read!()
           |> Jason.decode!(keys: :atoms)

  @include Application.compile_env(:stop_words, :include, Map.keys(@mapping)) |> List.wrap()
  @exclude Application.compile_env(:stop_words, :exclude, []) |> List.wrap()
  @supported Enum.sort(@include -- @exclude)

  for {iso_code, words} <- @mapping, iso_code in @supported do
    @doc "returns stop words for " <> to_string(iso_code)
    def unquote(iso_code)() do
      unquote(words)
    end

    def get(unquote(to_string(iso_code))) do
      unquote(iso_code)()
    end

    def get(unquote(iso_code)) do
      unquote(iso_code)()
    end
  end

  @doc """
  returns stop words for provided iso code or an empty string if invalid
  or not supported iso code
  """
  def get(_), do: []

  @doc """
  returns list of supported languages
  """
  def languages, do: @supported
end
