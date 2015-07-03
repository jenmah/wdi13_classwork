require 'sinatra'
require 'sinatra/reloader' if development?
require 'pry'
require 'yahoo_finance'

def get_standard_quotes(symbol)
  YahooFinance::get_standard_quotes(symbol)[symbol] rescue nil
end

get '/' do
  @symbol = params[:symbol]
    if @symbol
      @result = YahooFinance.quotes([@symbol], [:last_trade_price])
      @trade_price = @result[0].last_trade_price
    end
  erb :home
end


