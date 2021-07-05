DICTIONARY = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}

def word_substituter(tweet)
  tweet.split(" ").collect { |word| DICTIONARY.keys.include?(word.downcase) ? DICTIONARY[word.downcase] : word }.join(" ")
end

def bulk_tweet_shortener(tweet_array)
  tweet_array.collect { |tweet| puts word_substituter(tweet) }
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)
  if short.length <= 140
    return short
  else
    return short[0..139]
  end
end
