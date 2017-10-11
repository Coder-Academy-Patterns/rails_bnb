module ApplicationHelper
  # Takes 10000 and output it as $100.00
  def format_cents(cents)
    money = Money.new(cents, 'AUD')
    money.format
  end
end
