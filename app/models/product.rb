class Product < ActiveRecord::Base
  before_save :set_defaults

  belongs_to :category
  has_many :variantes

  attr_accessible :active, :description, :name, :price, :category_id, :product_id

  validates :name, :category_id, presence: true
  validates :price, :numericality => true
  validates :price, :numericality => { :only_integer => true, :greater_than => 0 }

  def set_defaults
    self.active ||= false
  end
end
