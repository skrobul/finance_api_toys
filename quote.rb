require 'open-uri'
require 'json'



def create_url(ticker)
  "http://finance.google.com/finance/info?client=ig&q=#{ticker}"
end

def retrieve_quote(ticker)
  open(create_url(ticker)) do |f|
    resp =  f.read[3..-1]
    JSON.parse(resp)
  end
end



puts retrieve_quote 'INDEXDJX:DJI'
