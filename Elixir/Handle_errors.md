Handle specify functions that with a trailing `!`

```ex
defmodule MyErr do
  def init do
    try do
      File.read! "crawler.jsY" # that file not exist
    rescue
      RuntimeError -> "hehe!"
      File.Error -> "file error!"
    end
  end
end
IO.inspect MyErr.init
# => "file error!"
```
