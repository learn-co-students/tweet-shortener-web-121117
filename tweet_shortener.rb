def dictionary(word)
    words = {"hello" => "hi",
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

    words.each do |original, short|
        if word.downcase == original
            return short
        end
    end
    return word
end

def word_substituter(tweet)
    words = tweet.split(" ")
    short_words = words.collect { |word| word = dictionary(word) }
    short_words.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        return word_substituter(tweet)
    else
        return tweet
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