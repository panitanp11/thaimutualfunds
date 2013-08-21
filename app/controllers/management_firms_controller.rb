class ManagementFirmsController < ApplicationController

  before_filter :all_management_firms, :showing_dates
  before_filter :management_firm, only: :show

  def index
  end

  def show
    if management_firm = ManagementFirm.where(id: params[:id]).first
      @funds = management_firm.funds.order("id DESC")
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

  def showing_dates
    @dates = UnitPrice.recent_dates
  end

end
