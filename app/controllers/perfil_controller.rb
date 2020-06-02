class PerfilController < ApplicationController
    before_action :authenticate_fellow!

    def perfil
        @payrolls = Payroll.where fellow_id: current_fellow.id
        
    end

    def nomina
        @payroll = Payroll.sum(:horas)
    end 
end
