

module Api
    class PedidosController < ApplicationController
      before_action :set_pedido, only: [:show, :update, :destroy]
  
      def index
        # Lógica para obtener todos los pedidos
        pedidos = Pedido.all.map { |pedido| { nombre: pedido.nombre, direccion: pedido.direccion, instrumento: pedido.instrumento } }
        render json: { pedidos: pedidos }
      end

      def show
        # Lógica para obtener un pedido específico por su ID
        pedido = { nombre: @pedido.nombre, direccion: @pedido.direccion, instrumento: @pedido.instrumento }
        render json: { pedido: pedido }
      end
  
  
      def create
        # Lógica para crear un nuevo pedido
        pedido = Pedido.new(pedido_params)
  
        if pedido.save
          render json: { pedido: pedido }, status: :created
        else
          render json: { error: pedido.errors }, status: :unprocessable_entity
        end
      end
  
      def update
        # Lógica para actualizar un pedido existente
        if @pedido.update(pedido_params)
          render json: { pedido: @pedido }
        else
          render json: { error: @pedido.errors }, status: :unprocessable_entity
        end
      end
  
      def destroy
        # Lógica para eliminar un pedido existente
        @pedido.destroy
        head :no_content
      end
  
      private
  
      def set_pedido
        @pedido = Pedido.find(params[:id])
      end
  
      def pedido_params
        params.require(:pedido).permit(:nombre, :cantidad, :precio)
      end
    end
  end
  