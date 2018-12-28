class DescartesController < ApplicationController
  before_action :set_descarte, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:index]

  # GET /descartes
  # GET /descartes.json
  def index
    @descartes = Descarte.all
  end

  # GET /descartes/1
  # GET /descartes/1.json
  def show
  end

  # GET /descartes/new
  def new
    @descarte = Descarte.new
  end

  # GET /descartes/1/edit
  def edit
  end

  # POST /descartes
  # POST /descartes.json
  def create
    @descarte = Descarte.new(descarte_params)

    respond_to do |format|
      if @descarte.save
        format.html { redirect_to @descarte, notice: 'O descarte foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @descarte }
      else
        format.html { render :new }
        format.json { render json: @descarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descartes/1
  # PATCH/PUT /descartes/1.json
  def update
    respond_to do |format|
      if @descarte.update(descarte_params)
        format.html { redirect_to @descarte, notice: 'O descarte foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @descarte }
      else
        format.html { render :edit }
        format.json { render json: @descarte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descartes/1
  # DELETE /descartes/1.json
  def destroy
    @descarte.destroy
    respond_to do |format|
      format.html { redirect_to descartes_url, notice: 'O descarte foi excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descarte
      @descarte = Descarte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descarte_params
      params.require(:descarte).permit(:proprietario_nome, :proprietario_cpf, :proprietario_cep, :proprietario_endereco, :proprietario_telefone, :tipo_material, :quantidade, :destino, :transportador_nome, :transportador_cpf, :transportador_cep, :transportador_endereco, :transportador_telefone, :transportador_tipo_transporte)
    end

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        if username == 'cmtu' && password = '123456'
          session[:user] = 'cmtu'
          true
        else
          false
        end
      end
    end

end
