# app/controllers/api/compras_controller.rb

module Api
    class ComprasController < ApplicationController
      before_action :set_compra, only: [:show, :update, :destroy]
  
      def index
        # Lógica para obtener todas las compras
        compras = Compra.all.map { |compra| { nombre: compra.nombre, total: compra.total } }
        render json: { compras: compras }
      end
  
      def show
        # Lógica para obtener una compra específica por su ID
        compra = { nombre: @compra.nombre, total: @compra.total }
        render json: { compra: compra }
      end
  
      def create
        # Lógica para crear una nueva compra
        compra = Compra.new(compra_params)
  
        if compra.save
          render json: { compra: compra }, status: :created
        else
          render json: { error: compra.errors }, status: :unprocessable_entity
        end
      end
  
      def update
        # Lógica para actualizar una compra existente
        if @compra.update(compra_params)
          render json: { compra: @compra }
        else
          render json: { error: @compra.errors }, status: :unprocessable_entity
        end
      end
  
      def destroy
        # Lógica para eliminar una compra existente
        @compra.destroy
        head :no_content
      end
  
      private
  
      def set_compra
        @compra = Compra.find(params[:id])
      end
  
      def compra_params
        params.require(:compra).permit(:producto, :cantidad, :precio)
      end
    end
  end
  