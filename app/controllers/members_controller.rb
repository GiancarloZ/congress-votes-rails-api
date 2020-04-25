class MembersController < ApplicationController

    def index
        @members = Member.all

        render json: @members
    end

    def create
        @members = Member.create(member_params)
        render json: @members
    end

    def show
        @members = Member.find(params[:id])
        render json: @members
    end

    def update
        @members = Member.find(params[:id])
        @members.update(member_params)
    end

    def destroy 
        @members = Member.find(params[:id])
        @members.destroy
    end

    private

    def memeber_params 
        params.require(:members).permit!
    end
end
