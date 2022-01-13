class HomeController < ApplicationController
  def index
     @api = StockQuote::Stock.new(api_key: 'pk_9a3fffc17adf4052ac921fb0e57968bc')

    if params[:simbolo] == ""
      @nada = "Ehh! Has olvidado entrar la búsqueda"
    elsif params[:simbolo]
      begin
        @bolsa = StockQuote::Stock.quote( params[:simbolo] )
        @logo = StockQuote::Stock.logo( params[:simbolo] )
        @compania = StockQuote::Stock.company( params[:simbolo] ) 
        @noticias = StockQuote::Stock.news( params[:simbolo] )
        
      rescue => e
        @bolsa = nil
        @logo = nil
        @compania = nil
      end
      if @bolsa == nil
          @error = "Ehh! Ese símbolo no existe" 
      end
    end
    end
end
