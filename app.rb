# frozen_string_literal: true

require 'rss'

# Parsing the RSS feed from the URL
rss = RSS::Parser.parse('https://www.positive.news/rss')

# Accessing the parsed feed data
puts "Feed Title: #{rss.channel.title}"
puts "Description: #{rss.channel.description}"
puts "Link: #{rss.channel.link}"

rss.items.each do |item|
  puts "Post title: #{item.title}"
  puts "Summary: #{item.description}"
  puts "Link: #{item.link}"
end
