class Product::Newegg < Product
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
    page = Nokogiri::HTML(http_get(link), nil, "GBK")
    update( name: page.css(".proHeader h1").text )
  end

  def link
    url
  end
  # protected instance methods ................................................
  # private instance methods ..................................................
end
