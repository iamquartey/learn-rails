class VisitorsController < ApplicationController

  def new
    @owner = Owner.new
    flash[:alert] = 'Welcome!'
    flash[:notice] = 'My birthday is soon.'
  end

end
