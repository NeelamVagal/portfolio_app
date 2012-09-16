class Company < ActiveRecord::Base
 validate :symbol_restrictions

  def symbol_restrictions
    if symbol.length < 3 or symbol.length >4
      errors.add :symbol, 'Symbol must be greater than 3 or less than 4'
    end
  end
end
