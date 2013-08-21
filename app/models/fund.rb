class Fund < ActiveRecord::Base
  attr_accessible :name, :abbr, :management_firm

  has_many :unit_prices
  belongs_to :management_firm

  validates :abbr, presence: true
  validates :management_firm, presence: true

  before_validation :prepare_funds

  def to_s
    "#{name}: #{abbr}"
  end

  def nav_at(date)
    if unit_price = unit_prices.where(nav_date: date).first
      unit_price.price.round(6)
    else
      0
    end
  end

  def self.format_buddhist_date(date)
   if date.match /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/
     d, m, y = $1.to_i, $2.to_i, ($3.to_i - 543)
     return "#{y}-#{sprintf("%02d", m)}-#{sprintf("%02d", d)}" if Date.valid_date? y, m, d
   end

   raise ArgumentError
  end

  private

  def prepare_funds
    abbr = abbr.upcase if abbr
  end
end
