require 'pry'

def dictionary
  {
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
end

def word_substituter(tweet)
  tweet = tweet.split(" ")
  tweet.each_with_index do |word, index|
    if dictionary.include?(word.downcase)
      tweet[index] = dictionary[word.downcase]
    end
  end
  tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
      word_substituter(tweet)
    elsif tweet.size < 140
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  subbed = word_substituter(tweet)
  if subbed.size > 140
    subbed[137..-1] = "..."
    subbed
  elsif tweet.size < 140
    tweet
  else
    subbed
  end
end
