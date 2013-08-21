namespace :http do
  desc "use to populate data for the first time"
  task :populate_unit_prices => :environment do
    log "populate_unit_prices", "task"
    log "Starting..."

    require 'net/http'
    TARGET_URL = 'http://www.thaimutualfund.com/AIMC/aimc_navSearchResult.jsp'

    @uri = URI(TARGET_URL)
    @start_month, @start_year = 7, 2555
    @end_month, @end_year = 7, 2556

    Fund.all.each do |f|
      log f, "FUND"
      dates, prices = fetch_unit_prices(f.abbr)

      if dates.size == prices.size
        dates.size.times do |i|
          puts "#{Fund.format_buddhist_date dates[i]} : #{prices[i]}"
          UnitPrice.create!(fund: f, price: prices[i],
                            nav_date: Fund.format_buddhist_date(dates[i]))
        end
      else
        raise RuntimeError
      end
    end

    log "Finished"
  end

  desc "use to fetch data daily"
  task :fetch_unit_prices => :environment do
    log "fetch_unit_prices", "task"
    log "Starting..."

    require 'net/http'
    TARGET_URL = 'http://www.thaimutualfund.com/AIMC/aimc_navSearchResult.jsp'

    @uri = URI(TARGET_URL)
    yesterday = Date.today - 1.day
    last_month = Date.today - 1.month
    @start_month, @start_year = last_month.month, last_month.year + 543
    @end_month, @end_year = yesterday.month, yesterday.year + 543

    Fund.all.each do |f|
      log f, "FUND"
      dates, prices = fetch_unit_prices(f.abbr)

      if dates.size == prices.size
        dates.size.times do |i|
          #puts "#{Fund.format_buddhist_date dates[i]} : #{prices[i]}"
          new_unit_price = UnitPrice.new(fund: f, price: prices[i],
                                        nav_date: Fund.format_buddhist_date(dates[i]))
          if new_unit_price.valid? && new_unit_price.save!
            puts "Saving: #{new_unit_price.nav_date} @price #{new_unit_price.price}"
          end
        end
      else
        raise RuntimeError
      end
    end

    log "Finished"
  end

  def fetch_unit_prices(fund)
    response = Net::HTTP.post_form(@uri, { searchType: "oldFund",
                                     abbrName: fund,
                                     data_month: @start_month,
                                     data_year: @start_year,
                                     data_month2: @end_month,
                                     data_year2: @end_year })

    counter_reset
    dates = []
    prices = []
    response.body.split("\n").each do |line|
      case @counter
      when 1
        dates << line.match(/(.*>)(.*)(<.*)/)[2]
        counter_up
      when 2
        counter_up
      when 3
        prices << line.match(/(.*>)(.*)(<.*)/)[2]
        counter_reset
      else
        counter_up if line.match(/F2F2F2/)
      end
    end
    #puts dates.to_s
    #puts prices.to_s
    [dates, prices]
  end

  def counter_reset
    @counter = 0
  end

  def counter_up
    @counter += 1
  end

  def log(msg, tag = "info")
    puts "[#{tag.upcase}] #{msg}"
  end

end
