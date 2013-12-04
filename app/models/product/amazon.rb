class Product::Amazon < Product
  # extends ...................................................................
  # includes ..................................................................
  # security (i.e. attr_accessible) ...........................................
  # relationships .............................................................
  # validations ...............................................................
  # callbacks .................................................................
  # scopes ....................................................................
  # additional config .........................................................
  # class methods .............................................................
  # public instance methods ...................................................
  # 获取商品详情
  def get_content
    page = Nokogiri::HTML(http_get(link))
    update( name: page.css("#btAsinTitle span").text )
    record_price page
  end

  def get_price
    page = Nokogiri::HTML(http_get(link))
    record_price page
  end

  def record_price page
    if value = page.css(".priceLarge").text.sub(",", "").scan(%r|[\d\.]+|).first
      update(low_price: value) if low_price.blank?
      record_bargain value
    end
  end

  # protected instance methods ................................................
  def link
    url || "http://www.amazon.cn/#{name}/dp/#{url_key}/ref="
  end
  
  # private instance methods ..................................................
end
