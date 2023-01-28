class MedicosController < ApplicationController
  before_action :set_medico, only: %i[ show edit update destroy ]
  

  # GET /medicos or /medicos.json
  def index
    @medicos = Medico.all
    .page(params[:page])
  end

  # GET /medicos/1 or /medicos/1.json
  def show
  end

  # GET /medicos/new
  def new
    @medico = Medico.new
    
     
  end

  # GET /medicos/1/edit
  def edit
  end

  # POST /medicos or /medicos.json
  def create
    @medico = Medico.new(medico_params)
    medico_cadastrado = Medico.all.any?{|m| m.crm==@medico.crm}
    if medico_cadastrado
      redirect_to new_medico_path,notice:"Médico já cadastrado"
    else

    respond_to do |format|
      # if medico_cadastrado
        #  format.html { redirect_to new_medico_path, notice: "Medico já cadastrado." }
        #  format.json { render json: @medico.errors, status: :unprocessable_entity }
      if @medico.save
        format.html { redirect_to medico_url(@medico), notice: "Medico was successfully created." }
        format.json { render :show, status: :created, location: @medico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end
  end

  # PATCH/PUT /medicos/1 or /medicos/1.json
  def update
    respond_to do |format|
      if @medico.update(medico_params)
        format.html { redirect_to medico_url(@medico), notice: "Medico was successfully updated." }
        format.json { render :show, status: :ok, location: @medico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos/1 or /medicos/1.json
  def destroy
    @medico.destroy

    respond_to do |format|
      format.html { redirect_to medicos_url, notice: "Medico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medico
      @medico = Medico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medico_params
      params.require(:medico).permit(:nome, :crm, :especialidade)
    end
end
