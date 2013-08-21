class HomeController < ApplicationController

  def index
    redirect_to management_firms_path
  end

  def contact
    @management_firms = ManagementFirm.order("id DESC")
  end

end
