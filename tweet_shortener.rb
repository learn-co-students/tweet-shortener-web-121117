def dictionary
  {
    'hello' => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'you' => 'u',
    'at' => '@',
    'and' => '&',
    'be' => 'b'
  }
end

def word_substituter(tweet)
  new_tweet = []
  tweet.split(' ').map do |word|
    dictionary.each do |key, val|
      if key == word.downcase
        word = val
      end
    end
    new_tweet << word
  end
  new_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
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
  substituted_tweet = word_substituter(tweet)
  if substituted_tweet.length > 140
    "#{substituted_tweet[0...137]}..."
  else
    substituted_tweet
  end
end
