def my_collect(new_collection)
  i = 0
  new_collection = []
  while i < new_collection.length
    new_collection << yield(array[i])
    i += 1
  end
  new_collection
end

names = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(names) do |name|
  puts name.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(languages) do |language|
  puts language.upcase
end
