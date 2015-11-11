class VendedorClientesController < ApplicationController
  before_action :set_vendedor_cliente, only: [:show, :edit, :update, :destroy]

  # GET /vendedor_clientes
  # GET /vendedor_clientes.json
  def index
    @vendedor_clientes = VendedorCliente.all
  end

  # GET /vendedor_clientes/1
  # GET /vendedor_clientes/1.json
  def show
  end

  # GET /vendedor_clientes/new
  def new
    @vendedor_cliente = VendedorCliente.new
  end

  # GET /vendedor_clientes/1/edit
  def edit
  end

  # POST /vendedor_clientes
  # POST /vendedor_clientes.json
  def create
    @vendedor_cliente = VendedorCliente.new(vendedor_cliente_params)

    respond_to do |format|
      if @vendedor_cliente.save
        format.html { redirect_to @vendedor_cliente, notice: 'Vendedor cliente was successfully created.' }
        format.json { render :show, status: :created, location: @vendedor_cliente }
      else
        format.html { render :new }
        format.json { render json: @vendedor_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendedor_clientes/1
  # PATCH/PUT /vendedor_clientes/1.json
  def update
    respond_to do |format|
      if @vendedor_cliente.update(vendedor_cliente_params)
        format.html { redirect_to @vendedor_cliente, notice: 'Vendedor cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendedor_cliente }
      else
        format.html { render :edit }
        format.json { render json: @vendedor_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendedor_clientes/1
  # DELETE /vendedor_clientes/1.json
  def destroy
    @vendedor_cliente.destroy
    respond_to do |format|
      format.html { redirect_to vendedor_clientes_url, notice: 'Vendedor cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendedor_cliente
      @vendedor_cliente = VendedorCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendedor_cliente_params
      params.require(:vendedor_cliente).permit(:cliente_id, :vendedor_id)
    end
end
