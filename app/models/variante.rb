class Variante < ActiveRecord::Base
	belongs_to :product
    attr_accessible :color, :tamano
end
