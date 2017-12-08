def translate(word)
  words = word.split(" ")
  vowels = ['a', 'e', 'i', 'o', 'u']
  words.collect! { |word|

    starts_with_vowel = false

    0.upto(vowels.length-1) {|vowel| starts_with_vowel = true if word[0] == vowels[vowel]
    break if starts_with_vowel }
    if(starts_with_vowel)
      word += "ay"
    else
      consonant = ''
      0.upto(word.length-1) {|letter|
        0.upto(vowels.length-1) {|vowel|
          if word[letter] == vowels[vowel]
            starts_with_vowel = true
            break
          end
        } # end vowels loop
        consonant += word[letter] if !starts_with_vowel
      } # end word loop
      word = word.slice(consonant.length, word.length-1) + consonant

      has_q = false
      if word[0] == 'u'
        0.upto(word.length-1) { |letter|
          if word[letter] == 'q'
            has_q = true
            word = word.slice(1, letter)
          end

        break if has_q
        }

      end
      if has_q
        word += "uay"
      else
        word += "ay"
      end
    end # end if vowel/else
  }
    return words.join(" ")
end
