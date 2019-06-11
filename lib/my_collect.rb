def my_collect(array)
  i = 0
  while i < array.length
    yield(array[i])
    i = 1 + i
  end
  array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(languages) do |language|
  puts language.upcase
end
end 