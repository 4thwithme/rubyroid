# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell.
# Days start at 0.

# > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12

def pick_best_pair_of_stocks(stock_prices = [])
  return [] if stock_prices.empty?

  buy_day = 0
  sell_day = 0
  max_profit = 0

  stock_prices.each_with_index do |price, index|
    stock_prices[index..-1].each_with_index do |price_to_compare, index_to_compare|
      profit = price_to_compare - price

      next unless profit > max_profit

      max_profit = profit
      buy_day = index
      sell_day = index + index_to_compare
    end
  end

  [buy_day, sell_day]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) === [1, 4]
