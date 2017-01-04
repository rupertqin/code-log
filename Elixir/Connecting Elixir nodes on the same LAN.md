On first machine

```sh
% iex --name one@192.168.0.100 --cookie monster
Erlang/OTP 17 [erts-6.0] [source-07b8f44] [64-bit] [smp:2:2] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (0.13.1-dev) - press Ctrl+C to exit (type h() ENTER for help)
iex(one@192.168.0.100)1>
```
On second machine

```sh
% iex --name two@192.168.0.103 --cookie monster
Erlang/OTP 17 [erts-6.0] [source-07b8f44] [64-bit] [smp:2:2] [async-threads:10] [hipe] [kernel-poll:false] [dtrace]

Interactive Elixir (0.13.1-dev) - press Ctrl+C to exit (type h() ENTER for help)
iex(two@192.168.0.103)1>
```

then connect

```sh
iex(one@192.168.0.100)1> Node.connect :'two@192.168.0.103'
true
iex(one@192.168.0.100)2> Node.list
[:"two@192.168.0.103"]
```

## Resource
[connecting-elixir-nodes-on-the-same-lan](http://benjamintan.io/blog/2014/05/25/connecting-elixir-nodes-on-the-same-lan/)
