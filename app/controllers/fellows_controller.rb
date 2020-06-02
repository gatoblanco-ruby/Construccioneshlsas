class FellowsController < ApplicationController
    def index
        @fellows = Fellow.all
    end 

    def show
        @fellow = Fellow.find(params[:id])
    end 

    def edit
        @fellow = Fellow.find(params[:id])
    end 
    
    def update
        @fellow = Fellow.find(params[:id])
        if @fellow.update(fellow_params)
            redirect_to fellows_path
        else 
            render :edit
        end
    end 

    def destroy 
        @fellow = Fellow.find(params[:id])
        @fellow.destroy
        redirect_to fellows_path
    end 
    
    private 
    def fellow_params
        params.require(:fellow).permit(:nombre, :email, :cedula)
    end

end
