require "prawn-rails"
prawn_document do |pdf|
    pdf.text 'Hello World!'
  end