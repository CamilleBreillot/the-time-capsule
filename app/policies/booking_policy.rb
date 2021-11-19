class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user == record.user || user.admin
  end

  def new?
    true
  end

  def create?
    true
  end

  def update?
    user == record.user || user.admin || Machine.where(user_id: record.user)
  end

  def declinebooking?
    user == record.user || user.admin || Machine.where(user_id: record.user)
  end

  def destroy?
    user == record.user || user.admin || Machine.where(user_id: record.user)
  end

end
