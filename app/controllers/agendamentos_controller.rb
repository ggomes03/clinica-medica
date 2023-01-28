class AgendamentosController < ApplicationController
  before_action :set_agendamento, only: %i[ show edit update destroy ]

  # GET /agendamentos or /agendamentos.json
  def index
    @agendamentos = Agendamento.all
    .page(params[:page])
  end

  # GET /agendamentos/1 or /agendamentos/1.json
  def show
  end

  # GET /agendamentos/new
  def new
    @agendamento = Agendamento.new
  end

  # GET /agendamentos/1/edit
  def edit
  end

  # POST /agendamentos or /agendamentos.json
  def create
    @agendamento = Agendamento.new(agendamento_params)
    medico_cadastrado = Medico.find_by(nome: @agendamento.medico)
    if medico_cadastrado
      respond_to do |format|
        if @agendamento.save
         format.html { redirect_to agendamento_url(@agendamento), notice: "Agendamento foi realizado com sucesso." }
         format.json { render :show, status: :created, location: @agendamento }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @agendamento.errors, status: :unprocessable_entity }
      end
    end
  else
    redirect_to new_agendamento_path, notice:"Médico não encontrado"
  end
  end

  # PATCH/PUT /agendamentos/1 or /agendamentos/1.json
  def update
    respond_to do |format|
      if @agendamento.update(agendamento_params)
        format.html { redirect_to agendamento_url(@agendamento), notice: "Agendamento foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @agendamento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @agendamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamentos/1 or /agendamentos/1.json
  def destroy
    @agendamento.destroy

    respond_to do |format|
      format.html { redirect_to agendamentos_url, notice: "Agendamento Cancelado." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendamento
      @agendamento = Agendamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def agendamento_params
      params.require(:agendamento).permit(:nome, :cpf, :medico, :especialidade, :data_consulta, :data_nascimento, :user_id)
    end
end
