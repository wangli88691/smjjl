class Bargain < ActiveRecord::Base
  # extends ...................................................................
  # includes ..................................................................
  # security (i.e. attr_accessible) ...........................................
  # attr_accessible :price, :discount, :history_low

  # relationships .............................................................
  belongs_to :product
  has_many :bargains_categories

  # validations ...............................................................
  validates :created_at, uniqueness: { scope: :product_id }

  # callbacks .................................................................
  # scopes ....................................................................
  # additional config .........................................................
  # class methods .............................................................
  # public instance methods ...................................................
  def product_name
    product.name
  end

  def product_img
    product.image_url
  end

  # protected instance methods ................................................
  # private instance methods ..................................................
end
