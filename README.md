# Pry for Elixir

A simple wrapper around `require IEx; IEx.pry` that makes your life easier.

## Installation

```elixir
def deps do
  [
    {:pry, "~> 0.1.0", only: [:dev, :test]}
  ]
end
```

If you don't want to install a dependecy you can also just create a `pry.ex` file in your project:

```Elixir
defmodule Pry do
  defmacro __using__(_opts \\ []) do
    quote do
      require IEx
      IEx.pry()
    end
  end
end
```

## Usage

1. Start your project with `iex -S` e.g. `iex -S phx.server`.
2. Drop `use Pry` into your code.
3. Start debugging.

```Elixir
defmodule Hello do
  def say(name) do
    use Pry
    IO.puts(name)
  end
end

pry(1)> name
```
