class TopicosController < ApplicationController
  before_action :set_topico, only: [:show, :edit, :update, :destroy]

  # GET /topicos
  # GET /topicos.json
  def index
    @topicos = Topico.all
  end

  # GET /topicos/1
  # GET /topicos/1.json
  def show
  end

  # GET /topicos/new
  def new
    @topico = Topico.new
  end

  # GET /topicos/1/edit
  def edit
  end

  # POST /topicos
  # POST /topicos.json
  def create
    @topico = Topico.new(topico_params)

    respond_to do |format|
      if @topico.save
        format.html { redirect_to @topico, notice: 'Tópico creado correctamente.' }
        format.json { render :show, status: :created, location: @topico }
      else
        format.html { render :new }
        format.json { render json: @topico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topicos/1
  # PATCH/PUT /topicos/1.json
  def update
    respond_to do |format|
      if @topico.update(topico_params)
        format.html { redirect_to @topico, notice: 'Tópico actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @topico }
      else
        format.html { render :edit }
        format.json { render json: @topico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topicos/1
  # DELETE /topicos/1.json
  def destroy
    @topico.destroy
    respond_to do |format|
      format.html { redirect_to topicos_url, notice: 'Tópico eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topico
      @topico = Topico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topico_params
      params.require(:topico).permit(:nombre)
    end
end
