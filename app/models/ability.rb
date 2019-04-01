class Ability
  include CanCan::Ability

  def initialize(user)
    if current_user && current_user.admin?
      can :manage, :all
    else
      can [:show, :edit, :update], User, id: user.id
      can [:show, :index], Order, user_id: user.id
      can :create, Comment, user_id: user.id
      can [:show, :index], Product
    end
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
