# frozen_string_literal: true

class FeedReader
  describe FeedReader do
    describe '#fetch_and_parse' do
      it 'returns a parsed RSS feed' do
        # Creating the instance of FeedReader then calling the method to fetch and parse the feed
        @rss_reader = FeedReader.new
        parsed_feed = @rss_reader.fetch_and_parse('https://www.positive.news/rss')
        # Making assertions about the parsed feed
        expect(parsed_feed).to be_an_instance_of(RSS::Parser)
        expect(parsed_feed.items.count).to be > 0
      end
    end
  end
end
