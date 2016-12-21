# in this case, how the variable pass to test context?
setup do
  {:ok, mypid} = KV.Bucket.start_link
  {:ok, pid: mypid}
end

test " stores values by key", %{pid: bucket} do
  KV.Bucket.pug bucket, "milk", 3
end

# it does so, convert to map, use match pattern
{:ok, context} = {:ok, pid: mypid}
%{pid: bucket} = Enum.into(context, %{})
