# Write your code here.
def dictionary
dictionary = {
     "hello" => "hi",
     "to" => "2",
     "too" => "2",
     "two" => "2",
     "for" => "4",
     "four" => "4",
     "be" => "b",
     "you" => "u",
      "at" => "@",
     "and" => "&"
   }
end

def word_substituter (tweets)
  tweet_array = tweets.split.collect do |word|
      if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
            #reassign the value of word(value)
        else
            word
         end
    end
     return tweet_array.join(" ")
 end

 def bulk_tweet_shortener (tweets)
   tweets.collect do |singletweet| #looping over each string #do is
  puts word_substituter(singletweet) #pass in one tweet (singletweet) so the word substitutor replaces the word
end
end

def selective_tweet_shortener (singletweet)
   if singletweet.length > 140
     return word_substituter(singletweet)
  elsif singletweet.length < 130
    return singletweet
  else
    return singletweet
end
end

def shortened_tweet_truncator (singletweet)
  if singletweet.length > 140
    word_substituter(singletweet)[0..139] 
 elsif singletweet.length == 140
   return singletweet
 else
   return singletweet
end
end
