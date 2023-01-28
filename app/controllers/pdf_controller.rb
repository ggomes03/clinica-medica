class PdfController < ApplicationController
    # require "prawn-rails"
    def index  
    end
    def download
        pdf=Prawn::Document.new

        
       @agendamentos=Agendamento.all
       @agendamentos.each do |agendamento| 
         
            pdf.text "cliente: #{agendamento.nome}"
            pdf.text "id: #{agendamento.user_id}"
            pdf.text "cpf: #{agendamento.cpf}"
            pdf.text "data da consulta: #{agendamento.data_consulta}"
            pdf.text "medico: #{agendamento.medico}"


       end
    
       send_data(pdf.render,
        filename:"usuarios.pdf",
    type:"application/pdf")  
    end 

end
