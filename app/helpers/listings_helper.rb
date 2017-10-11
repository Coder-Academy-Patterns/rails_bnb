module ListingsHelper
  def format_cents(cents)
    Money.new(cents, 'AUD').format
  end
end
