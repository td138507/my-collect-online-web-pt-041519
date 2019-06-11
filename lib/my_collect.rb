def my_collect(array)
  i = 0
  array = []
  while i < array.length
    array << yield(array[i])
    i = 1 + i
  end
  array
end

names = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(names) do |name|
  name.split(" ").first
end

languages = ['ruby', 'javascript', 'python', 'objective-c']

my_collect(languages) do |language|
  language.upcase
end
