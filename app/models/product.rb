class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :price, presence: true
  validates :description, presence: true
  validates :description, uniqueness: true
  validates :description, length: { in: 10..500 }
  
  has_many :images
  belongs_to :supplier
  has_many :orders
  has_many :category_products

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
