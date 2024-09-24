class MoviePolicy < ApplicationPolicy
  
  def show?
    true
  end

  class Scope < ApplicationPolicy::Scope
   
  end
end
