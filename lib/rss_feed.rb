# frozen_string_literal: true

require 'rss'

# Using a class Parser
class Parser
  # Parsing the RSS feed from the URL
  @url = 'https://www.positive.news/rss'
  rss = RSS::Parser.parse(url)

  # Accessing the parsed feed data
  puts "Feed Title: #{rss.channel.title}"
  puts "Description: #{rss.channel.description}"
  puts "Link: #{rss.channel.link}"

  rss.items.each do |item|
    puts "Post title: #{item.title}"
    puts "Summary: #{item.description}"
    puts "Link: #{item.link}"
  end
end
