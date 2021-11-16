class MachinePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all # => allows you to see al restaurant even the one created by other user than you / 'scope.all' equivalent to 'Restaurants.all'
      # scope.where(user: user) #user is refering to user in initializer of the 'application_policy.rb'
    end
  end

  # def new?
  #   true
  # end

  def create?
    true
  end

  def show?
    true
  end

  # def edit? CAN BE COMMENTED AS EDIT IS TAKING UPDATE VALUE ACCORDING TO APPLICATION_POLICY
  #   # id the user is the owner of the machines it shoudl be true otherwise it is false
  #   # user = current_user and record = @restaurant
  #   if user == record.user
  #     true
  #   else
  #     false
  #   end
  # end

  def update?
    user == record.user || user.admin
  end

  def destroy?
    user == record.user || user.admin
  end

end
