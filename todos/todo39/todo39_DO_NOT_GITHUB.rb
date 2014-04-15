=begin

Review using APIs with Ruby by doing this codecademy track: http://www.codecademy.com/tracks/twitter
 
OR
 
Draw a diagram that explains the "handshake" that the OAuth protocol mediates, use whichever service you'd like


----------------------


Codeacademy:

=end

require 'open-uri'

kittens = open('http://placekitten.com/')
response_status = kittens.status
response_body = kittens.read[559, 441]

puts response_status
puts response_body

=begin
	

OK
                      __     __,
                      \,`~"~` /
      .-=-.           /    . .\
     / .-. \          {  =    Y}=
    (_/   \ \          \      / 
           \ \        _/`'`'`b
            \ `.__.-'`        \-._
             |            '.__ `'-;_
             |            _.' `'-.__)
              \    ;_..-`'/     //  \
              |   /  /   |     //    |
              \  \ \__)   \   //    /
               \__)  
nil

The Client/Server Relationship
Did you see that? A few lines of Ruby pulled in some source code from the PlaceKitten website! (They're very good at cat pictures.)

We can use HTTP to grab just about any web page on the Internet. But where do those web pages come from? They come from other computers on the Internet called servers.

The Internet is full of clients (like you!) who ask for various resources (web pages, files, and so on), and servers, who store that information (or know where to get it). When you make an HTTP request, it zips through the Internet until it finds the server that knows how to fulfill that request. Then the server sends a response back to you!


							##########
							# Server #
							##########
					  #		##########     #
					#		##########	 	 #
				  #							   #
				#		 #		 #		 #	     #
		#######		    #		 #		  #		   #######
		#Client		   #		 #		   #	   #Client
		#######		  #			 #		    #	   #######
				   #######	  #######    #######
				   #Client	  #Client	 #Client
				   #######	  #######	 #######


No REST for the Wicked
In fact, this client/server relationship is a prerequisite of a set of principles called REST (or Representational State Transfer). This sounds kind of scary, but it's super easy—let's walk through it together.

Remember how we said HTTP involves sending hypertext (text with links)? Whenever you navigate through a site by clicking links, you're making a state transition, which brings you to the next page (representing the next state of the application). That's it!

By following this simple model of clicking from page to page, you're starting to follow REST principles. When something follows REST principles, we say that thing is RESTful. We'll cover these principles in the next exercise.

 You (the client) make an HTTP request.  The server sends the response.

A RESTful API
An API, or application programming interface, is kind of like a coding contract: it specifies the ways a program can interact with an application. For example, if you want to write a program that reads and analyzes data from Twitter, you'd need to use the Twitter API, which would specify the process for authentication, important URLs, classes, methods, and so on.

For an API or web service to be RESTful, it must do the following:

Separate the client from the server

Not hold state between requests (meaning that all the information necessary to respond to a request is available in each individual request; no data, or state, is held by the server from request to request)

Use HTTP and HTTP methods (as explained in the next section).
There are some other requirements, but they're beyond the scope of this lesson.

 

=end


require 'open-uri'

kittens = open('http://placekitten.com/200/300')

f = File.open('kittens.jpg', 'w')
kittens.each do |kitten|
  f.write(kitten)
end

f.close

=begin
	
Making a Request
You saw a request in the first exercise. Now it's time for you to make your own! (Don't worry, we'll help.)

On line 1, we've required the 'open-uri' module, which is the Ruby way of bringing in additional methods and constants we'll need to make our HTTP request. A module is just a bucket of extra Ruby tools.

On line 3, we'll use open on placekitten.com in preparation for our GET request, which we make when we read from the site on line 5. (We use those specific character numbers to control the input we get back—this is what gives us our cat image.)

We'll need your help to complete the request!

=end 

require 'open-uri'

# Open http://placekitten.com/ for reading on line 4!
kittens = open("http://placekitten.com/")
body = kittens.read[559, 441]

# Add your puts statement below!
puts body

=begin
                      __     __,
                      \,`~"~` /
      .-=-.           /    . .\
     / .-. \          {  =    Y}=
    (_/   \ \          \      / 
           \ \        _/`'`'`b
            \ `.__.-'`        \-._
             |            '.__ `'-;_
             |            _.' `'-.__)
              \    ;_..-`'/     //  \
              |   /  /   |     //    |
              \  \ \__)   \   //    /
               \__)  
nil 




The Four Verbs
The number of HTTP methods you'll use is quite small—there are just four HTTP "verbs" you'll need to know! They are:

GET: retrieves information from the specified source.

POST: sends new information to the specified source.

PUT: updates existing information of the specified source.

DELETE: removes existing information from the specified source.

So when we sent our GET request to placekitten.com, we retrieved information. When you add to or update your blog, you're sending POST or PUT requests; when you delete a tweet, there goes a DELETE request.

Anatomy of a Request
An HTTP request is made up of three parts:

1. The request line, which tells the server what kind of request is being sent (GET, POST, etc.) and what resource it's looking for;

2. The header, which sends the server additional information (such as which client is making the request)

3. The body, which can be empty (as in a GET request) or contain data (if you're POSTing or PUTing information, that information is contained here).



# Typical request

# POST /codecademy/learn-http HTTP/1.1
# Host: www.codecademy.com
# Content-Type: text/html; charset=UTF-8

# Name=Eric&Age=26


Endpoints
Endpoints are API-defined locations where particular data are stored. Just as you'll GET a pair of pants from PantsWorld or you'll GET a bag of peanuts from PeanutHut, you'll GET something different depending on the endpoint you use.

For instance, if you're using the API for a video hosting service, there might be endpoints for the most popular videos, the most recent videos, or videos belonging to a certain genre or category.

Authentication & API Keys
Many APIs require an API key. Just as a real-world key allows you to access something, an API key grants you access to a particular API. Moreover, an API key identifies you to the API, which helps the API provider keep track of how their service is used and prevent unauthorized or malicious activity.

Some APIs require authentication using a protocol called OAuth. We won't get into the details, but if you've ever been redirected to a page asking for permission to link an application with your account, you've probably used OAuth.

API keys are often long alphanumeric strings. We've made one up in the editor to the right! (It won't actually work on anything, but when you receive your own API keys in future projects, they'll look a lot like this.)

api_key = "FtHwuH8w1RDjQpOr0y0gF3AWm8sRsRzncK3hHh9"

HTTP Status Codes
A successful request to the server results in a response, which is the message the server sends back to you, the client.

The response from the server will contain a three-digit status code. These codes can start with a 1, 2, 3, 4, or 5, and each set of codes means something different. (You can read the full list here). They work like this:

1xx: You won't see these a lot. The server is saying, "Got it! I'm working on your request."

2xx: These mean "okay!" The server sends these when it's successfully responding to your request.

3xx: These mean "I can do what you want, but I have to do something else first." You might see this if a website has changed addresses and you're using the old one; the server might have to reroute the request before it can get you the resource you asked for.

4xx: These mean you probably made a mistake. The most famous is "404," meaning "file not found": you asked for a resource or web page that doesn't exist.

5xx: These mean the server goofed up and can't successfully respond to your request.

=end 

require 'open-uri'

placekitten = open('http://placekitten.com/')

# Add your code below!

puts placekitten.status

=begin 

Anatomy of a Response
The HTTP response structure mirrors that of the HTTP request. It contains:

A response line, which includes the three-digit HTTP status code;

A header, which includes further information about the server and its response;

The body, which contains the text of the response.

=end

# HTTP/1.1 200 OK
# Content-Type: text/xml; charset=UTF-8

# <?xml version="1.0" encoding="utf-8"?>
# <string xmlns="http://www.codecademy.com/">Accepted</string>

=begin 

Parsing XML
XML (which stands for E xtensible Markup Language) is very similar to HTML—it uses tags between angle brackets. The difference is that XML allows you to use tags that you make up, rather than tags that the W3C decided on. For instance, you could create an API that returns information about a pet:

<pet>
  <name>Jeffrey</name>
  <species>Giraffe</species>
</pet>
As long as you document the structure of your API's response, other people can use your API to get information about <pet>s.

=end

require "rexml/document"

file = File.open("pets.txt")
doc = REXML::Document.new file
file.close

doc.elements.each("pets/pet/name") do |element|
  puts element
end

# <name>Jeffrey</name>
# <name>Gustav</name>
# <name>Gregory</name>


=begin 

Parsing JSON
JSON (which stands for JavaScript Object Notation) is an alternative to XML. It gets its name from the fact that its data format resembles JavaScript objects, and it is often more succinct than the equivalent XML. For instance, our same <pet> Jeffrey would look like this in JSON:

{
  "pets": {
    "name": "Jeffrey",
    "species": "Giraffe"
  }
}
Look, ma! No tags!


=end

require 'json'

pets = File.open("pets.txt", "r")

doc = ""
pets.each do |line|
  doc << line
end
pets.close

puts JSON.parse(doc)

=begin 

XML or JSON?
This leads us to wonder, though: how do we know whether an API will reply with XML or JSON?

The only way you'll know what type of data an API will send you is to read that API's documentation! Some will reply with one, and some will reply with the other. Documentation is a programmer's best friend, and it's always in your best interest to read it so you understand that what the API expects from you and what the API intends to send you when you make a request.

REST Constraints & Requirements
Quiz time! Let's see if you remember the major points of HTTP and REST.


=end

require 'open-uri'

# Add your code below!

website = open("http://placekitten.com")
puts website.status

=begin 

Verifying Credentials
Every request sent to Twitter's API must be authorized. This exercise will have you register a new application with Twitter, obtain a consumer key (identifies your app) and an access token (identifies a user of your app), and check to make sure that you are sending the values correctly.

Visit https://dev.twitter.com/apps and register a new application.

On the application settings page, click "Create my access token" to generate an access token and secret.

Copy the values for consumer key, consumer secret, access token, and access secret into the example.


https://dev.twitter.com/apps/new

Create an application
	name:  LewisJPaul
	Description: learning Twitter API
	website:  http://www.standforth.com
	callback URL: http://www.cnn.com


Access level	 Read-only 
About the application permission model

Consumer key	nz2hfyYZpjeeOWtpw6E8TQ

Consumer secret	HFgfhup9VdYDcg1ZSJxHxeccV1hd6aw9YLlEEWhhNs

Request token URL	https://api.twitter.com/oauth/request_token

Authorize URL	https://api.twitter.com/oauth/authorize

Access token URL	https://api.twitter.com/oauth/access_token

Callback URL	http://www.cnn.com

Sign in with Twitter	No


=end

require 'rubygems'
require 'oauth'

# Change the following values to those provided on dev.twitter.com
# The consumer key identifies the application making the request.
# The access token identifies the user making the request.
consumer_key = OAuth::Consumer.new(
    "YOUR_CONSUMER_KEY",
    "YOUR_CONSUMER_SECRET")
access_token = OAuth::Token.new(
    "YOUR_ACCESS_TOKEN",
    "YOUR_ACCESS_SECRET")

# All requests will be sent to this server.
baseurl = "https://api.twitter.com"

# The verify credentials endpoint returns a 200 status if
# the request is signed correctly.
address = URI("#{baseurl}/1.1/account/verify_credentials.json")

# Set up Net::HTTP to use SSL, which is required by Twitter.
http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# Build the request and authorize it with OAuth.
request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

# Issue the request and return the response.
http.start
response = http.request request
puts "The response status was #{response.code}"

=begin 

Reading a Tweet
This exercise introduces the /1.1/statuses/show.json endpoint, which returns data for a Tweet, given its ID number.

We introduce the idea of passing parameters in your GET request by creating a Hash of key/value pairs, and then encoding it into the URL with URI.encode_www_form.

First, change the id parameter of the request to load the Tweet with ID 266270116780576768.

Second, print that Tweet on a single line in the following format "USERNAME - TWEET_TEXT".

?

Reading a Timeline
This exercise introduces the /1.1/statuses/user_timeline.json endpoint, which returns a list of the public Tweets from an account in reverse chronological order.

We introduce the idea of modifying a request response through some common parameters, in this case count which controls the number of results returned by endpoints which return multiple Tweets.

Sending a Tweet
Twitter applications have different access levels. Until now, the examples have only needed the default "read only" permission. However, to write a Tweet, an application needs "read and write" permission.

Update your app to this permission and use your new access level to send a Tweet! (Note that this will send the Tweet from the account which owns the app.)

Go to https://dev.twitter.com/apps and select the app you created in exercise 1. Click the 'settings' tab and change your application type to "read and write".

Click back to the 'details' tab and then regenerate your access token and secret.




