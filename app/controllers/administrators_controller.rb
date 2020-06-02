class AdministratorsController < ApplicationController
    def index
        @administrators = Administrator.all
    end 
    
    def show
        @administrator = Administrator.find(params[:id])
    end 
    
    
    def edit
        @administrator = Administrator.find(params[:id])
    end 
    
    
    def update
        @administrator = Administrator.find(params[:id])
        if @administrator.update(administrator_params)
            redirect_to administrators_path
        else 
            render :edit
        end
    end 
    
    
    def destroy 
        @administrator = Administrator.find(params[:id])
        @administrator.destroy
        redirect_to administrator_path
    end 
    
    private 
    def administrator_params
        params.require(:administrator).permit(:nombre, :cedula, :cargo)
    end
    
end
