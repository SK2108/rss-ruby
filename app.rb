require 'rss'

url = ''
open(url) do |rss|
  feed = = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  feed.items.each do |item|
    puts "Item: {item.title}"
  end
end