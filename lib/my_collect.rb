def my_collect(new_collection)
  i = 0
  new_collection = []
  while i < new_collection.length
    new_collection << yield(array[i])
    i += 1
  end
  new_collection
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end
