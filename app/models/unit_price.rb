class UnitPrice < ActiveRecord::Base
  attr_accessible :fund, :price, :nav_date

  belongs_to :fund

  validates :fund_id, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :nav_date, presence: true, uniqueness: { scope: :fund_id }

  def self.recent_dates
    pluck(:nav_date).uniq.sort.reverse.first(NUMBER_OF_DAYS_TO_SHOW + 1)
  end

end
