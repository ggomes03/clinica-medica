class Medico < ApplicationRecord
    
    
    validates :nome, presence:true
    validates :crm, presence:true, length: {minimum:3, maximum:3}
    validates :especialidade, presence:true
    paginates_per 5
end
