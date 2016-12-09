class GuardiansController < ApplicationController
  def show
    @guardian = current_guardian
  end
end
