class GuardiansController < ApplicationController
  def show
    @guardian = current_guardian
    @children = @guardian.children
    @famillies = @guardian.families
    @centers = Center.all.limit(4)
  end
end
