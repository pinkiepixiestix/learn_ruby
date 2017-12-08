class Book
# write your code here
  def title
    @book
  end

  def title=(title)
    @book = make_title(title)
  end

  def make_title(title)
    stop_words = ["and", "in", "on", "of", "the", "a", "an"]
    title.capitalize.split.map{|word| stop_words.include?(word) && word != 0? word : word.capitalize}.join(" ")
  end
end
