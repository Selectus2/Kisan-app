#app/policies/farmer_instrument_policy.rb

class InstrumentPolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    farmer.present?
  end
"""
  def update?
    return true if farmer.present? && farmer == farmer_instrument.farmer
  end

  def destroy?
    return true if farmer.present? && farmer == farmer_instrument.farmer
  end
"""
  private

    def instrument
      record
    end
end
