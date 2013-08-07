class ManagementFirmsController < ApplicationController

  before_filter :all_management_firms, :management_firm

  def index
  end

  def show
    if management_firm = ManagementFirm.where(id: params[:id]).first
      @funds = management_firm.funds
    else
      render 'index'
    end
  end

  private

  def all_management_firms
    @management_firms = ManagementFirm.order("id DESC")
  end

  def management_firm
    @management_firm = ManagementFirm.where(id: params[:id]).first
  end

end
