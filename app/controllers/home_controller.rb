class HomeController < ApplicationController
  def index
     @api = StockQuote::Stock.new(api_key: 'pk_9a3fffc17adf4052ac921fb0e57968bc')
    if params[:simbolo] == ""
      @nada = "Ehh! Has olvidado entrar la búsqueda"
    elsif params[:simbolo]
      begin
        @bolsa = StockQuote::Stock.quote( params[:simbolo] )
      rescue => e
        @bolsa = nil
      end
      if @bolsa == nil
          @error = "Ehh! Ese símbolo no existe" 
      end
    end
    end
end
