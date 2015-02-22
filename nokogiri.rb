require "nokogiri"
require "open-uri"

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

search = doc.css("ul")

list = doc.css("ul.components-list").children
list.each do|n|
    puts n.css(".components-data").children
end
