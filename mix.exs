defmodule Pry.MixProject do
  use Mix.Project

  def project do
    [
      app: :pry,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      source_url: "https://github.com/SebastianSzturo/pry-elixir",
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [{:ex_doc, ">= 0.0.0", only: :dev, runtime: false}]
  end

  defp description do
    "A simple wrapper around `require IEx; IEx.pry` that makes your life easier."
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/SebastianSzturo/pry-elixir"}
    ]
  end
end
