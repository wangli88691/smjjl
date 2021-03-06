class ProductRoot::Gome < ProductRoot
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
  def get_lists
    page = Nokogiri::HTML(http_get(url))
    page.css(".item a").each do |link|
      url = link.attr("href")
      ProductList::Gome.create(url: url, url_key: get_key(url)) if get_key(url)
    end
  end

  # protected instance methods ................................................
  # private instance methods ..................................................
  # private
  def get_key url
    keys = url.scan(%r|cat([^.]+)\.|).first
    keys.first
  rescue
    nil
  end
end
