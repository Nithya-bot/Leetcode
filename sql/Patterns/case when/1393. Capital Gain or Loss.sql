select stock_name,
sum(case operation
    when 'Buy' then -price
    when 'Sell' then +price
end )
as capital_gain_loss
from Stocks
group by stock_name;
