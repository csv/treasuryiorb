require 'json'
require 'open-uri'
require 'cgi'

def treasuryio(sql)
  # Use like this:
  # treasuryio('SELECT * FROM t1 limit 3')
  endpoint = 'https://premium.scraperwiki.com/cc7znvq/47d80ae900e04f2/sql/?q='
  body = open(endpoint + (CGI.escape sql)).read
  JSON.parse body
end
