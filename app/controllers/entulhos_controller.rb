class EntulhosController < ApplicationController
  before_action :set_entulho, only: [:show, :edit, :update, :destroy]

  # GET /entulhos
  # GET /entulhos.json
  def index
    @entulhos = Entulho.all
  end

  # GET /entulhos/1
  # GET /entulhos/1.json
  def show
  end

  # GET /entulhos/new
  def new
    @entulho = Entulho.new
  end

  # GET /entulhos/1/edit
  def edit
  end

  # POST /entulhos
  # POST /entulhos.json
  def create
    @entulho = Entulho.new(entulho_params)

    respond_to do |format|
      if @entulho.save
        format.html { redirect_to @entulho, notice: 'Entulho was successfully created.' }
        format.json { render :show, status: :created, location: @entulho }
      else
        format.html { render :new }
        format.json { render json: @entulho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /entulhos/1
  # PATCH/PUT /entulhos/1.json
  def update
    respond_to do |format|
      if @entulho.update(entulho_params)
        format.html { redirect_to @entulho, notice: 'Entulho was successfully updated.' }
        format.json { render :show, status: :ok, location: @entulho }
      else
        format.html { render :edit }
        format.json { render json: @entulho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entulhos/1
  # DELETE /entulhos/1.json
  def destroy
    @entulho.destroy
    respond_to do |format|
      format.html { redirect_to entulhos_url, notice: 'Entulho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entulho
      @entulho = Entulho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entulho_params
      params.require(:entulho).permit(:proprietario_nome, :proprietario_cpf, :proprietario_cep, :proprietario_endereco, :proprietario_telefone, :tipo_material, :quantidade, :destino, :transportador_nome, :transportador_cpf, :transportador_cep, :transportador_endereco, :transportador_telefone, :transportador_tipo_transporte)
    end
end
