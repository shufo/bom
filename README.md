# Bom

An elixir library for working with BOM (byte order mark).

## Installation

```elixir
def deps do
  [
    {:bom, "~> 0.1.1"}
  ]
end
```

## Usage

* Add BOM to string

```elixir
iex> BOM.add("test")
"\uFEFFtest"
```

* Add BOM to file

```elixir
iex> File.write!("test.csv", "hello")
iex> BOM.file_add("test.csv")

$ file test.csv
test.csv: UTF-8 Unicode (with BOM) text, with no line terminators
```
