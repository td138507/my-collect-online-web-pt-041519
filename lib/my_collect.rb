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

my_collect(names) do |names|
  puts names.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(languages) do |languages|
  puts languages.upcase
end
