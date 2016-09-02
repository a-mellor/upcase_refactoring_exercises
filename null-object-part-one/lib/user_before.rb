class User
  include ActiveModel::Model
  attr_accessor :credit_card, :subscription

  def charge
    subscription.charge(credit_card) unless subscription.nil?
  end

  def has_mentoring?
    subscription && subscription.has_mentoring?
  end

  def price
    (subscription || NoSubscription.new).price
  end
end
