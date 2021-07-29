class Company < ApplicationRecord
  has_many :offers

  def offers_count
    offers.count
  end

  def offers_percent
    ((offers.count.to_f / all_offers) * 100.00).round(2)
  end

  def all_offers
    Company.all.reduce(0) do |memo, company|
      memo + company.offers.count
    end
  end
end
