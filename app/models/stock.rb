class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks

  @client = IEX::Api::Client.new(publishable_token: 'pk_343c0976e23d447da4aab917d888574e')

  def self.find_by_ticker(ticker_symbol)
    # looks up Stock table and finds the first entry of the ticker relation (which is the object)
    where(ticker: ticker_symbol).first
  end

  def self.new_from_lookup(ticker_symbol)
    looked_up_stock = @client.quote(ticker_symbol)
    # creates new stock object with following parameters (same as Stock.new/self.new)
    new(name: looked_up_stock.company_name, ticker: looked_up_stock.symbol, last_price: looked_up_stock.latest_price,
        low: looked_up_stock.low, high: looked_up_stock.high)
  rescue Exception => e
    nil
  end

  def self.minutes(ticker_symbol)
    @client.chart(ticker_symbol, '1d').map do |day|
      day['minute']
    end
  end

  def self.average_prices(ticker_symbol)
    @client.chart(ticker_symbol, '1d').map do |day|
      day['average']
    end
  end

  def self.headlines(ticker_symbol)
    @client.news(ticker_symbol).map do |day|
      day['headline']
    end
  end

  def self.urls(ticker_symbol)
    @client.news(ticker_symbol).map do |day|
      day['url']
    end
  end

  def self.summaries(ticker_symbol)
    @client.news(ticker_symbol).map do |day|
      day['summary']
    end
  end
end
