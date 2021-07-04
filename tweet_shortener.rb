require "pry"

def dictionary
  dictionary = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  result = []
  tweet_array.map do |x|
    dictionary.each_key do |key|
      keyA = key.split(', ')
      if keyA.include?(x.downcase)
        x = dictionary[key]
      end
    end
    result << x
  end
  result.join(" ")
end

def bulk_tweet_shortener (tweets)
  tweets.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
    pre_shortend_tweet = selective_tweet_shortener(tweet)
    if pre_shortend_tweet.length > 140
      pre_shortend_tweet = "#{pre_shortend_tweet[0..135]} ..."
      pre_shortend_tweet
    else
      pre_shortend_tweet
    end
end
