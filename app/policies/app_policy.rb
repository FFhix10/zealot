class AppPolicy < ApplicationPolicy

  def index?
    user.has_role? [:admin, :mobile]
  end

  def show?
    false
  end

  def update?
    record.create_id == user.id
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end