# list is Enumerable https://hexdocs.pm/elixir/Enumerable.html
# map is Collectable https://hexdocs.pm/elixir/Collectable.html

# wordlist to map
Enum.into [a: 1, b: 2], %{}
#=> %{a: 1, b: 2}

# map to wordlist 
Enum.into %{a: 1, b: 2}, []
#=> [a: 1, b: 2]
