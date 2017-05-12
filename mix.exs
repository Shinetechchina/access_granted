defmodule Accessgrant.Mixfile do
  use Mix.Project

  def project do
    [app: :accessgrant,
     version: "0.1.0",
     elixir: "~> 1.3",
     package: package(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: """
        DSL for permission control, follow the code of ruby gem 'access-control'
     """,
     docs: docs(),
     deps: deps()]
  end

  def package do
    [contributors: ["Gary Gao"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/garygao/accessgrant"}
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:ex_doc, ">=0.0.0", only: :dev}]
  end

  defp docs do
    [extras: ["README.md"]]
  end
end
