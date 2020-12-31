# frozen_string_literal: true

class PatientPolicy
  attr_reader :user, :patient

  def initialize(user, patient)
    @user = user
    @post = patient
  end

  def update?
    user.admin?
  end

  def create?
    user.admin?
  end

  def index?
    user.admin?
  end
end
