class Tipper
  TAX = 0.05

  def initialize(amount:, discount_percentage: 0, tip_percentage:)
    @amount = amount
    @discount_percentage = discount_percentage
    @tip_percentage = tip_percentage
  end

  def total
    tax_total = amount + (amount * TAX)
    discount_total = (amount * (discount_percentage / 100.0))
    tip_total = (amount * (tip_percentage / 100.0))

    tax_total - discount_total + tip_total
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage
end

# Explaining variables are used to make the code more readable
# Refactored from
#
# def total
#   amount + (amount * TAX) - (amount * (discount_percentage / 100.0)) + (amount * (tip_percentage / 100.0))
# end
