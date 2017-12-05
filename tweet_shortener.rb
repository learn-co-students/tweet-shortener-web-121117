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
    tweet = tweet.split(" ")
    tweet.each_with_index do |word, index|
      if dictionary.include?(word.downcase)
        tweet[index] = dictionary[word.downcase]
      end
    end
    puts tweet.join(" ")
  end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
      tweet = tweet.split(" ")
      tweet.each_with_index do |word, index|
        if dictionary.include?(word.downcase)
          tweet[index] = dictionary[word.downcase]
        end
      end
      tweet.join(" ")
    elsif tweet.size < 140
      tweet
    end
end

def shortened_tweet_truncator(tweet)
  if tweet.size > 140
    tweet = tweet.split(" ")
    tweet.each_with_index do |word, index|
      if dictionary.include?(word.downcase)
        tweet[index] = dictionary[word.downcase]
      end
    end
    if tweet.join(" ").size > 140
      tweet = tweet.join(" ")
      tweet[137..-1] = "..."
      tweet
    else
      tweet.join(" ")
    end
  elsif tweet.size < 140
    tweet
  end
end
