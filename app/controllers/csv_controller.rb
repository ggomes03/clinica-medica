require 'csv'

class CsvController < ApplicationController
    def usuarios
        @users = User.all
    end
end
