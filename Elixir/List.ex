
# length
l = [1,2,3,4]
length(l)
#=> 4

# push
l = List.insert_at(l, -1, 5)
#=> [1,2,3,4,5]

#pop
l = List.delete_at(l, -1)
#=> [1,2,3,4]

# concat 
l = l ++ [5]
#=> [1,2,3,4,5]

# unshift
l = List.insert_at([l, 0, 0)
#=> [0,1,2,3,4,5]
l = [-1 | l]
#=> [-1,0,1,2,3,4,5]

# shift
l = List.delete_at(l, 0)
#=> [0,1,2,3,4,5]
