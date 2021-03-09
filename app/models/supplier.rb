class Supplier < ApplicationRecord
  def products
    # has_many :products
    Product.where(supplier_id: id)
  end
end
