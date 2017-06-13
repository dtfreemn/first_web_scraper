require 'nokogiri'
require 'open-uri'

url = "https://simple.wikipedia.org/wiki/List_of_Presidents_of_the_United_States"

doc = Nokogiri::HTML(open(url))

rows = doc.css('div#mw-montent-text div.mw-parser-output table.wikitable tbody tr td')

rows.each do |row|
	puts row
end
