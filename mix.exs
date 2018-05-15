defmodule Bom.MixProject do
  use Mix.Project

  defp description do
    """
    An elixir library for working with BOM (byte order mark).
    """
  end

  def project do
    [
      app: :bom,
      version: "0.1.0",
      elixir: "~> 1.4",
      description: description(),
      package: package(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Shuhei Hayashibara"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/shufo/bom",
        "Docs" => "https://hexdocs.pm/bom"
      }
    ]
  end
end
