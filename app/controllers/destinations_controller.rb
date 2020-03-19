class DestinationController < ApplicationController 

    def index 
        @destinatins = Destination.all 
        @bloggers = Blogger.all
        render :index
    end 

    def show 
        @destination = Destination.find(params[:id])
        render :show
    end 


end 