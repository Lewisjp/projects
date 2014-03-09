# require 'reference of library/gem/feature'
# similar to how other languages use include to reference another file.
require 'open-uri'

open('https://www.yahoo.com') do |f|
  f.each_line {|line| p line}
  puts f.base_uri         # 
  puts f.content_type     # "text/html"
  puts f.charset          # "iso-8859-1"
  puts f.content_encoding # []
  puts f.last_modified    # Thu Dec 05 02:45:02 UTC 2002
end

=begin
This exercise was originally getting the following error:

`open_loop': redirection forbidden: http://www.ruby-lang.org/en -> https://www.ruby-lang.org/en (RuntimeError)

Instead the scheem was changed in the URI to call on the Hypertext Transfer Protocol Secure (HTTPS) of the site.   It's the result of simply layering the Hypertext Transfer Protocol (HTTP) on top of the SSL/TLS protocol, thus adding the security capabilities of SSL/TLS to standard HTTP communications.



=end 