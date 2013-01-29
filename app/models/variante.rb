class Variante < ActiveRecord::Base
	belongs_to :product
    attr_accessible :color, :tamano
    validates :color, :tamano, presence: true
end
