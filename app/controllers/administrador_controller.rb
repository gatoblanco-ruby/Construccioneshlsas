class AdministradorController < ApplicationController
    before_action :authenticate_administrator!
end
