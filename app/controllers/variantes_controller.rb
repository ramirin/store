class VariantesController < ApplicationController
  def index
    @variante = Variante.all
  end

  def new
    @product = Product.find(params[:product_id])
    @variante = @product.variantes.build
   # respond_with(@variante)
  end

  def create
    @product = Product.find(params[:product_id])
    @variante = @product.variantes.build(params[:variante])
    if @variante.valid?
    	@variante.save
    #return redirect_to variants_path, notice: "Your variante #{@variante.name} has been created!"
    end
  end

end
