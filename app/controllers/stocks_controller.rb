class StocksController < ApplicationController
  def show
    client = AlphaVantage::Client.new(key: ENV['ALPHA_VANTAGE_API_KEY'])
    data = client.stock_time_series(symbol: params[:symbol], function: 'TIME_SERIES_DAILY')
    stock_data = data['Time Series (Daily)']
    latest_data = stock_data.values.first
    price = latest_data.['4. close']

    render json: { symbol: params[:symbol], price: price }
  end
end
