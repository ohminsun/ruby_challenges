require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("http://www.useventing.com/competitions/omnibus"))

search = doc.css("h3")

list = doc.css("h3.omnibus-list").children
list.each do|n|
    puts n.css(".h3.ominbus-list").children
end
