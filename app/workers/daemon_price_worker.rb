class DaemonPriceWorker
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  # recurrence { daily.hour_of_day(2, 10, 18) }
  recurrence backfill: true do
    daily.hour_of_day(2, 10, 18)
  end

  sidekiq_options :queue => :daemon

  def perform
    Product.find_each do |p|
      UpdatePriceWorker.perform_async(p.id)
    end
  end
end