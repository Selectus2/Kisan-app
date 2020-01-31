#app/policies/farmer_instrument_policy.rb

class FarmerInstrumentPolicy < ApplicationPolicy
  # alias_method :current_user, :current_farmer

  def index?
    true
  end

  def create?
    farmer.present?
  end

  def update?
    return true if farmer.present? && farmer.id == farmer_instrument.farmer_id
  end

  def destroy?
    return true if farmer.present? && farmer.id == farmer_instrument.farmer_id
  end

  private

    def farmer_instrument
      record
    end
end
