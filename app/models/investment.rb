class Investment < ActiveRecord::Base
  belongs_to :portfolio
  belongs_to :company
  def worth_at_cost
    worth = cost*quantity
    return worth
  end
  def worth_today
    quantity * company.price
  end
  validate :quantity_should_be_positive
  def quantity_should_be_positive
     if quantity < 0
       errors.add :quantity, 'should be positive'
     end
    if cost < 0
      errors.add :cost, 'should be positive'
    end
  end
end
