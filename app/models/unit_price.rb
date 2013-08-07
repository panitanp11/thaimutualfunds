class UnitPrice < ActiveRecord::Base
  attr_accessible :fund, :price, :nav_date

  belongs_to :fund

  validates :fund_id, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 } 
  validates :nav_date, presence: true

  def self.five_recent_dates
    pluck(:nav_date).uniq.sort.reverse.first(5)
  end

end
