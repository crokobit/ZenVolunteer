class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, ZenPeriod
      can :manage, Volunteer
    else
      can :manage, Vote
      can :read, ZenPeriod
    end
  end
end
