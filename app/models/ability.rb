class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, ZenPeriod
      can :manage, Volunteer
    elsif user.normal_user?
      can :manage, Vote
      can :read, ZenPeriod
    else
    end
  end
end
