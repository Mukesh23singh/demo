# frozen_string_literal: true

class PhysicianPolicy
  attr_reader :user, :physician

  def initialize(user, physician)
    @user = user
    @post = physician
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
