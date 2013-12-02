=begin
**Tweet Shortener**

A client has hired you to automatically post some of their brand messages to twitter, but the problem is that some of them are too long. Your job is to shorten them by replacing longer words with shorter representations (i.e. "two" becomes "2").

Write a method that will take a tweet, search it for words that you can substitute, and return a substituted string tweet. For instance, the tweet "Hello to you, I'm at home" would become "Hi 2 u, I'm @ home". The client has provided the following acceptable substitutes.
```
"to, two, too" become '2' 
"for, four" become '4'
'be' becomes 'b'
'you' becomes 'u'
"at" becomes "@" 
"and" becomes "&"
```

**Objectives**

# 1. Modify your program to truncate the tweet to 140 characters if it's still too long after substitution
=end

# 1. Write a method to shorten a string based on the allowed substitutes
# 1. Modify your program to only do the substitutions if the tweet is longer than 140 characters
def twitterfy(message)
	answer = Array.new
	check_words = message.split(" ")
	if message.length > 140
		check_words.each do |word|
			word.gsub! "to", "2"
			word.gsub! "two", "2"
			word.gsub! "too", "2"
			word.gsub! "for", "4"
			word.gsub! "four", "4"
			word.gsub! "be", "b"
			word.gsub! "you", "u"
			word.gsub! "at", "@"
			word.gsub! "and", "&"
			answer << word
		end
	end
	answer = answer.join(" ")
	# you talk to the client about this scenario and decide together that the best thing to do is just truncate the string to 140 characters if it's still too long after you do the substitution.
	if answer.length > 140
		answer.slice!(0..140)
	end
end

# test =  "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
# twitterfy(test)



# 2. Write a method that iterates over the list of tweets, shortens them, and prints the results to the screen

# `hint: you'll need a way to look up each word and see if it has a substitution`

def twitterfy_all(arr)
	new_arr = Array.new
	arr.each do |twitter|
		twitter = twitterfy(twitter)
		new_arr << twitter
	end
	puts new_arr
end


# 3. Now the client has come back to you. They love the program, but they noticed that even tweets that are under 140 characters are being shortened. Now they want you to only shorten the tweet if it's too long.

def shorten_long_tweets(tweet)
	new_arr = Array.new
	
	if tweet.class == String
		if tweet.length > 140
			return twitterfy(tweet)
		else 
			return tweet
		end
	elsif tweet.class == Array
		tweet.each do |twitter|
			if twitter.length > 140
				twitter = twitterfy(twitter)
			end
			new_arr << twitter
		end
		return new_arr
	else
		puts "Invalid input.  Enter String or Array of Strings."
	end
end

#tests the 3rd criteria with an array of strings



tweet1 = "Hey guys, can anyone teach me how to be cool? I really want to be the best at everything, you know what I mean? Tweeting is super fun you guys!!!!"
#146 characters 

tweet2 = "OMG you guys, you won't believe how sweet my kitten is. My kitten is like super cuddly and too cute to be believed right?"
#121 characters

tweet3 = "I'm running out of example tweets for you guys, which is weird, because I'm a writer and this is just writing and I tweet all day. For real, you guys. For real."
#160 characters


tweet4 = "GUISEEEEE this is so fun! I'm tweeting for you guys and this tweet is SOOOO long it's gonna be way more than you would think twitter can handle, so shorten it up you know what I mean? I just can never tell how long to keep typing!"
#230 characters

tweets = Array.new
tweets << tweet1 << tweet2 << tweet3 << tweet4 


#puts shorten_long_tweets(tweets)








