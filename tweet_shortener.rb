str = "New game. Middle aged tweet followed by #youngPeopleHashTag Example: Gotta get my colonoscopy and mammogram soon. Prevention is key! #swag"

def dictionary
  {
    "hello" => "hi",
    "be" => "b",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(str)
str_arr = str.split(" ")
str_arr.map! do |word|
  if dictionary.keys.include?(word.downcase)
    word= dictionary[word.downcase] #hash key is refernece to hash value
  else
    word
  end
end
str_arr.join(" ")
end

def bulk_tweet_shortener(arr)
 arr.each do |x|
  puts word_substituter(x)
end
end

def selective_tweet_shortener(str)
  if str.length < 140
    str
  else
    word_substituter(str)
  end
end

def shortened_tweet_truncator(str)
shortened= word_substituter(str)
if shortened.length > 140
  shortened[0..136] + "..."
else
  str
end
end
