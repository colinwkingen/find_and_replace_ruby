class String
  define_method(:far) do |find,replace|
    final_string  = []
    words = self.split(" ")
    words.each do |word|
      if word == find
        final_string.push(replace)
      else
        final_string.push(word)
      end
    end
    final_string.join(" ")
  end
end
