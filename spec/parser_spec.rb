# frozen_string_literal: true

require 'spec_helper'

class FeedReader

  RSpec.describe FeedReader do
    describe '#fetch_and_parse' do
      it 'returns a parsed RSS feed' do
        
        # Creating the instance of FeedReader then calling the method to fetch and parse the feed
        rss_reader = FeedReader.new
        feed = feed.fetch_and_parse("https://www.positive.news/rss")
        # Making assertions about the parsed feed
        expect(@feed.url).to eq "https://www.positive.news/rss"
        expect(feed.items.count).to be > 0
      end
    end
  end
end
