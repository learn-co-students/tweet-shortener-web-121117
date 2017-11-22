def dictionary

dictionary = {
  "hello" => "hi",
  "to, two, too" => "2",
  "for, four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
}
end

def word_substituter(tweet)
# 1. Write a method, `word_substituter` that takes in a string of a tweet as an argument and shortens that string
# based on the allowed substitutes. Use your `dictionary` method that contains your dictionary hash to compare
# the words in the tweet against the keys in the hash. If there are any matches, replace the word in the tweet with
#  the associated substitute from the hash.
#     * **Hint:** How can you iterate over every word in a tweet and compare it to the hash keys? Convert the
#     tweet into an array to enable this. Then, make sure to convert it back into a string to return the
#     shortened tweet at the end of the method.
#     * **Hint:** How can you grab all of the keys of the hash for the purpose of comparing them to the words
#     in the tweet? Use the `.keys` method.
dictionary = {
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
  dictionary_keys = dictionary.keys
  tweet_array = tweet.split

  corrected_array = tweet_array.collect do |item|
    if dictionary_keys.include?(item.downcase)
      item = dictionary[item.downcase]
    else
      item
    end

    end
      corrected_array.join(" ")
end
#
# Write a method, `bulk_tweet_shortener` that takes in an array of tweets, iterates over them,
# shortens them, and `puts` out the results to the screen.
#   * **Hint:** You already wrote a method that shortens tweets. Use it!
#   * **Hint:** Remember that you can `puts` out the result of a method by putting `puts` in front of the method call.

def bulk_tweet_shortener(tweet_array)
  tweet_array.each do |tweet|
    puts word_substituter(tweet)
  end

end
