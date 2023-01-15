require "application_system_test_case"

class AgendamentosTest < ApplicationSystemTestCase
  setup do
    @agendamento = agendamentos(:one)
  end

  test "visiting the index" do
    visit agendamentos_url
    assert_selector "h1", text: "Agendamentos"
  end

  test "should create agendamento" do
    visit agendamentos_url
    click_on "New agendamento"

    fill_in "Cpf", with: @agendamento.cpf
    fill_in "Data cons", with: @agendamento.data_cons
    fill_in "Data nasc", with: @agendamento.data_nasc
    fill_in "Especialidade", with: @agendamento.especialidade
    fill_in "Medico", with: @agendamento.medico
    fill_in "Nome", with: @agendamento.nome
    click_on "Create Agendamento"

    assert_text "Agendamento was successfully created"
    click_on "Back"
  end

  test "should update Agendamento" do
    visit agendamento_url(@agendamento)
    click_on "Edit this agendamento", match: :first

    fill_in "Cpf", with: @agendamento.cpf
    fill_in "Data cons", with: @agendamento.data_cons
    fill_in "Data nasc", with: @agendamento.data_nasc
    fill_in "Especialidade", with: @agendamento.especialidade
    fill_in "Medico", with: @agendamento.medico
    fill_in "Nome", with: @agendamento.nome
    click_on "Update Agendamento"

    assert_text "Agendamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Agendamento" do
    visit agendamento_url(@agendamento)
    click_on "Destroy this agendamento", match: :first

    assert_text "Agendamento was successfully destroyed"
  end
end
