class ManagementFirm < ActiveRecord::Base
  attr_accessible :name, :abbr

  has_many :funds

  validates :abbr, presence: true

  before_validation :prepare_management_firms

  def to_s
    "#{name}: #{abbr}"
  end

  private

  def prepare_management_firms
    abbr = abbr.upcase if abbr
  end

end
