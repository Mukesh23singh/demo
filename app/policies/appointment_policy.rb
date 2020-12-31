# frozen_string_literal: true

class AppointmentPolicy
  attr_reader :user, :appointment

  def initialize(user, appointment)
    @user = user
    @post = appointment
  end

  def update?
    user.admin?
  end

  def create?
    user.admin?
  end
end
