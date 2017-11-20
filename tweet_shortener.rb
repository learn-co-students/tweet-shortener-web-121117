DICTIONARY = {"hello" => 'hi', "to" => '2', "two" => "2", "too" => '2', "four" => "4", "for" => '4', 'be' => 'b', 'you' => 'u', "at" => "@", "and" => "&"}

def word_substituter(phrase)
  phrase.split(" ").map {|word| DICTIONARY.keys.include?(word.downcase) ? DICTIONARY[word.downcase] : word}.join(" ")
end

def bulk_tweet_shortener(phrase)
  phrase.map { |p| puts word_substituter(p) }
end

def selective_tweet_shortener(phrase)
  phrase.length > 140 ? word_substituter(phrase) : phrase
end

def shortened_tweet_truncator(phrase)
  word_substituter(phrase)[0...140]
end
