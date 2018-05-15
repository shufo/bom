# Bom

An elixir library for working with BOM (byte order mark).

## Installation

```elixir
def deps do
  [
    {:bom, "~> 0.1.0"}
  ]
end
```

## Usage

* Add Bom to string

```elixir
iex> Bom.add("test")
"\uFEFFtest"
```

* Add Bom to file

```elixir
iex> File.write!("test.csv", "hello")
iex> Bom.file_add("test.csv")

$ file test.csv
test.csv: UTF-8 Unicode (with BOM) text, with no line terminators
```
