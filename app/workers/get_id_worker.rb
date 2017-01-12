class GetIdWorker
  include Sidekiq::Worker
  sidekiq_options :queue => :get_id

  def perform(product_list_id, page_num)
    ProductList.find(product_list_id.to_i).get_product_ids(page_num)
  end
end