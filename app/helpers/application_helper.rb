module ApplicationHelper
  # Takes 10000 and output it as $100.00
  def format_cents(cents)
    money = Money.new(cents, 'AUD')
    money.format
  end

  def format_cents_for_country(cents, country)
    money = Money.new(cents, country.currency.iso_code)
    money.format
  end
end
